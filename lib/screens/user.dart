import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:splitbuddy/__generated__/schema.ast.gql.dart';
import 'package:splitbuddy/__generated__/schema.schema.gql.dart';
import 'package:splitbuddy/extensions/group_extension.dart';
import 'package:splitbuddy/extensions/user_extension.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';
import 'package:splitbuddy/graphql/__generated__/queries.req.gql.dart';
import 'package:splitbuddy/models/transaction_group_types.dart';
import 'package:splitbuddy/screens/group.dart';
import 'package:splitbuddy/screens/home_page.dart';
import 'package:splitbuddy/state/app_state.dart';

class UserPage extends StatefulWidget {
  final Ginteracted_usersData_interactedUsers initialUser;

  const UserPage({super.key, required this.initialUser});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<TransactionCardTypes> transactions = [];

  final ScrollController _scrollController = ScrollController();

  bool _loading = false;

  late Ginteracted_usersData_interactedUsers user;
  Map<String, List<TransactionCardTypes>> expenseGrouped = {};
  List<String> dates = [];

  @override
  void initState() {
    user = widget.initialUser;
    _scrollController.addListener(() {
      var nextPageTrigger = 300;

      if (_scrollController.position.pixels < nextPageTrigger) {
        fetchData();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetchData();
    });
    super.initState();
  }

  fetchData() async {
    if (_loading) {
      return;
    }
    setState(() {
      _loading = true;
    });
    try {
      var client = await context.read<AppState>().client;
      var result = await client.execute(
        GtransactionWithUserReq(
          (b) => b.vars
            ..withUser = user.id
            ..limit = 10
            ..fromTime = transactions.lastOrNull?.createdAt,
        ),
      );
      if (result.data != null) {
        if (transactions.isEmpty) {
          var pos = _scrollController.position.maxScrollExtent -
              _scrollController.position.pixels;

          _scrollController
              .jumpTo(_scrollController.position.maxScrollExtent - pos);
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            _scrollController
                .jumpTo(_scrollController.position.maxScrollExtent - pos);
          });
        }
        for (var transaction in result.data!.getTransactionsWithUser) {
          if (transaction.transactionPartGroupId != null) {
            var group = transactions.firstWhereOrNull((element) =>
                (element is GroupedCrossSettlementTransactions &&
                    element.groupId == transaction.transactionPartGroupId) ||
                (element is GroupedPaidTransactions &&
                    element.groupId == transaction.transactionPartGroupId));
            if (group != null) {
              switch (group) {
                case SingleTransaction():
                  break;
                case GroupedPaidTransactions(transactions: var transactions):
                  if (!transactions
                      .any((element) => element.id == transaction.id)) {
                    transactions.add(transaction);
                  }
                case GroupedCrossSettlementTransactions(
                    transactions: var transactions
                  ):
                  if (!transactions
                      .any((element) => element.id == transaction.id)) {
                    transactions.add(transaction);
                  }
              }
            } else {
              transactions.add(
                transaction.transactionType ==
                        GTransactionType.CROSS_GROUP_SETTLEMENT
                    ? GroupedCrossSettlementTransactions(
                        transactions: [transaction],
                        groupId: transaction.transactionPartGroupId!)
                    : GroupedPaidTransactions(
                        groupId: transaction.transactionPartGroupId!,
                        transactions: [transaction],
                      ),
              );
            }
          } else {
            if (!transactions.any((element) =>
                element is SingleTransaction &&
                element.transaction.id == transaction.id)) {
              transactions.add(SingleTransaction(transaction: transaction));
            }
          }
        }

        setState(() {});
        expenseGrouped = {};
        for (var transaction in transactions) {
          var date = DateFormat('d MMM y')
              .format(DateTime.parse(transaction.createdAt).toLocal());
          if (expenseGrouped[date] == null) {
            expenseGrouped[date] = [transaction];
          } else {
            expenseGrouped[date]?.add(transaction);
          }
        }
        dates = expenseGrouped.keys.toList();
        dates.sort((a, b) => DateFormat('d MMM y')
            .parse(a)
            .compareTo(DateFormat('d MMM y').parse(b)));
      }
    } finally {
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            title: Row(
              children: [
                UserIconWidget(
                  user: user,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(user.displayName),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.call_received),
                      Text(user.toReceive.toString())
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.call_made),
                      Text(user.toPay.toString())
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.bottomCenter,
            child: CustomScrollView(
              shrinkWrap: true,
              physics: const MaintiningScrollPhysics(),
              controller: _scrollController,
              slivers: [
                ...dates.map(
                  (entry) => MultiSliver(
                    pushPinnedChildren: true,
                    children: [
                      SliverPersistentHeader(
                        delegate: DateHeader(entry),
                        pinned: true,
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (index >= expenseGrouped[entry]!.length) {
                              return null;
                            }
                            var transaction = expenseGrouped[entry]![
                                expenseGrouped[entry]!.length - 1 - index];
                            var ourUser = context.read<AppState>().user!;

                            return UserTransactionCard(
                              maybeGroupTransaction: transaction,
                              userGroup: context
                                  .read<AppState>()
                                  .userGroups
                                  .firstWhereOrNull(
                                    (element) =>
                                        element.name == null &&
                                        element.members.length == 2 &&
                                        element.members.any((p0) =>
                                            p0.member.id == ourUser.id) &&
                                        element.members.any(
                                            (p0) => p0.member.id == user.id),
                                  ),
                            );
                          },
                          childCount: expenseGrouped[entry]!.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
          const Divider(),
          ButtonBar(
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.sell),
                onPressed: () async {
                  // var expense = await Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => CreateExpensePage(group: group),
                  //   ),
                  // );
                  // if (expense is GExpenseFields) {
                  //   expenses.insert(0, expense);
                  //   setState(() {});
                  // }
                },
                label: const Text(
                  "Add Expense",
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class UserTransactionCard extends StatelessWidget {
  final TransactionCardTypes maybeGroupTransaction;
  final GGroupFields? userGroup;

  const UserTransactionCard(
      {super.key, required this.maybeGroupTransaction, this.userGroup});

  bool getIsReceiver(
          BuildContext context, GSplitTransactionFields transaction) =>
      context.read<AppState>().user?.id == transaction.fromUser.id;

  bool isSelf(BuildContext context) =>
      context.read<AppState>().user?.id == maybeGroupTransaction.creator.id;

  String getTitle(BuildContext context, GSplitTransactionFields transaction) {
    if (transaction.transactionType == GTransactionType.CASH_PAID) {
      if (getIsReceiver(context, transaction)) {
        return '${transaction.toUser.shortName} paid you';
      } else {
        return 'you paid ${transaction.toUser.shortName}';
      }
    } else if (transaction.transactionType == GTransactionType.EXPENSE_SPLIT) {
      if (getIsReceiver(context, transaction)) {
        return 'you owe ${transaction.toUser.shortName}';
      } else {
        return '${transaction.fromUser.shortName} owes you';
      }
    }
    return '';
  }

  String? subTitle(BuildContext context, GSplitTransactionFields transaction) {
    if (transaction.transactionType == GTransactionType.CASH_PAID ||
        transaction.transactionType == GTransactionType.EXPENSE_SPLIT) {
      if (transaction.group.id == userGroup?.id) {
        return 'in Direct Payment';
      } else {
        return 'in ${transaction.group.name}';
      }
    }
    return null;
  }

  String getGroupName(
          BuildContext context, GSplitTransactionFields transaction) =>
      transaction.group.id == userGroup?.id
          ? 'Direct Payment'
          : context.read<AppState>().getGroupName(transaction.group.id);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: FractionallySizedBox(
        widthFactor: 0.7,
        alignment: maybeGroupTransaction is GroupedCrossSettlementTransactions
            ? Alignment.center
            : isSelf(context)
                ? Alignment.centerRight
                : Alignment.centerLeft,
        child: Align(
          alignment:
              isSelf(context) ? Alignment.centerRight : Alignment.centerLeft,
          child: IntrinsicWidth(
            child: switch (maybeGroupTransaction) {
              SingleTransaction(transaction: var transaction) =>
                buildSingleTransaction(context, transaction),
              GroupedPaidTransactions(
                transactions: var transactions,
                groupId: var groupedTransactionId,
                creator: var creator,
                total: var total,
                createdAt: var createdAt
              ) =>
                transactions.length > 1
                    ? TransactionCard(
                        title: TextSpan(
                            text: getTitle(context, transactions.first)),
                        amount: total,
                        createdAt: createdAt,
                        subtitle: 'Payment split into',
                        body: [
                          const Divider(),
                          ...transactions.map(
                            (split) => Row(
                              children: [
                                Text(split.amount.toString()),
                                Expanded(
                                  child: Text(
                                    split.group.id == userGroup?.id
                                        ? 'Direct Payment'
                                        : context
                                                .read<AppState>()
                                                .userGroups
                                                .firstWhereOrNull((element) =>
                                                    element.id ==
                                                    split.group.id)
                                                ?.displayName ??
                                            split.group.id,
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      )
                    : buildSingleTransaction(context, transactions.first),
              GroupedCrossSettlementTransactions(
                createdAt: var createdAt,
                transactionPairs: var transactionPairs
              ) =>
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ...transactionPairs.map(
                      (e) => Stack(
                        fit: StackFit.passthrough,
                        clipBehavior: Clip.none,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Text(
                                "Settled ${e.$1.amount} between ${getGroupName(context, e.$1)} and ${getGroupName(context, e.$2 ?? e.$1)}",
                                style: Theme.of(context).textTheme.labelMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 10,
                            child: Text(
                              DateFormat("h:mm a").format(
                                DateTime.parse(createdAt).toLocal(),
                              ),
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
            },
          ),
        ),
      ),
    );
  }

  Widget buildSingleTransaction(
      BuildContext context, GSplitTransactionFields transaction) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 5,
        ),
        if (transaction.expense != null)
          ExpenseCard(expense: transaction.expense!),
        TransactionCard(
          title: TextSpan(text: getTitle(context, transaction)),
          amount: transaction.amount,
          createdAt: transaction.createdAt,
          subtitle: subTitle(context, transaction),
        ),
      ],
    );
  }
}

class ExpenseCard extends StatelessWidget {
  final GExpenseBasic expense;

  const ExpenseCard({super.key, required this.expense});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        // color: Theme.of(context).highlightColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Text(
              expense.title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Expense\nAmount',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.labelSmall),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  expense.amount.toString(),
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onSurface),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final double elevation;
  final TextSpan title;
  final int? amount;
  final String? subtitle;
  final String? createdAt;
  final List<Widget> body;
  final EdgeInsets padding;
  final Color? amountColor;

  const TransactionCard({
    super.key,
    this.elevation = 2.0,
    required this.title,
    this.amount,
    this.subtitle,
    this.createdAt,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    this.body = const <Widget>[],
    this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        children: [
          IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IntrinsicWidth(
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (amount != null) ...[
                          Text(
                            "$amount",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: amountColor,
                                ),
                          ),
                          const Spacer(),
                        ],
                        const SizedBox(
                          width: 5,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(title),
                            if (subtitle != null)
                              Text(
                                subtitle!,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ...body,
              ],
            ),
          ),
          if (createdAt != null)
            Positioned(
              bottom: -5,
              right: -5,
              child: Text(
                DateFormat("h:mm a").format(
                  DateTime.parse(createdAt!).toLocal(),
                ),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
        ],
      ),
    );
  }
}
