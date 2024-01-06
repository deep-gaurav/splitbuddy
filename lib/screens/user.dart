import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
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
import 'package:splitbuddy/utils/color_utils.dart';

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
  ValueNotifier<bool> maintain = ValueNotifier(true);

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
        maintain.value = true;
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
          Expanded(
              child: CustomScrollView(
            physics: MaintiningScrollPhysics(maintain: maintain),
            controller: _scrollController,
            slivers: [
              SliverAppBar.large(
                primary: true,
                pinned: true,
                title: SizedBox(
                  height: 40,
                  child: Row(
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
              ),
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
                                      element.members.any(
                                          (p0) => p0.member.id == ourUser.id) &&
                                      element.members
                                          .any((p0) => p0.member.id == user.id),
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

  (TextSpan, Color?) getTitle(
      BuildContext context, GSplitTransactionFields transaction) {
    ColorScheme scheme = ColorUtils.getMainScheme(context);
    ColorScheme neutralYellow = ColorUtils.getNeutralYellow(context);
    ColorScheme neutralBlue = ColorUtils.getNeutralBlue(context);

    if (transaction.transactionType == GTransactionType.CASH_PAID) {
      if (getIsReceiver(context, transaction)) {
        return (
          TextSpan(children: [
            TextSpan(
              text: transaction.toUser.shortName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
                text: ' paid you',
                style: TextStyle(
                  color: neutralYellow.primary,
                )),
          ]),
          neutralYellow.primary,
        );
      } else {
        return (
          TextSpan(children: [
            TextSpan(
                text: 'you paid ',
                style: TextStyle(
                  color: neutralYellow.primary,
                )),
            TextSpan(
              text: transaction.toUser.shortName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          neutralYellow.primary,
        );
      }
    } else if (transaction.transactionType == GTransactionType.EXPENSE_SPLIT) {
      if (getIsReceiver(context, transaction)) {
        return (
          TextSpan(children: [
            TextSpan(
              text: 'you owe ',
              style: TextStyle(
                color: scheme.error,
              ),
            ),
            TextSpan(
              text: transaction.toUser.shortName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          scheme.error
        );
      } else {
        return (
          TextSpan(children: [
            TextSpan(
              text: transaction.fromUser.shortName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: ' owes you',
              style: TextStyle(
                color: scheme.primary,
              ),
            ),
          ]),
          scheme.primary,
        );
      }
    }
    return (const TextSpan(), null);
  }

  TextSpan? subTitle(
      BuildContext context, GSplitTransactionFields transaction) {
    if (transaction.transactionType == GTransactionType.CASH_PAID ||
        transaction.transactionType == GTransactionType.EXPENSE_SPLIT) {
      if (transaction.group.id == userGroup?.id) {
        return const TextSpan(children: [
          TextSpan(text: 'in '),
          TextSpan(
              text: 'Direct Payment',
              style: TextStyle(decoration: TextDecoration.underline))
        ]);
      } else {
        return TextSpan(children: [
          const TextSpan(text: 'in '),
          TextSpan(
            text: transaction.group.name,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          )
        ]);
      }
    }
    return null;
  }

  TextSpan getGroupName(BuildContext context, String groupId) =>
      groupId == userGroup?.id
          ? const TextSpan(
              text: 'Direct Payment',
              style: TextStyle(decoration: TextDecoration.underline))
          : TextSpan(
              text: context.read<AppState>().getGroupName(groupId),
              style: const TextStyle(fontStyle: FontStyle.italic));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
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
              SingleTransaction(transaction: var transaction) => ChatBubble(
                  clipper: ChatBubbleClipper1(
                    type: isSelf(context)
                        ? BubbleType.sendBubble
                        : BubbleType.receiverBubble,
                  ),
                  backGroundColor: Color.alphaBlend(
                      Theme.of(context)
                          .colorScheme
                          .surfaceTint
                          .withOpacity(isSelf(context) ? 0.5 : 0.2),
                      Theme.of(context).cardColor),
                  padding: EdgeInsets.only(
                    left: isSelf(context) ? 0 : 20,
                    right: !isSelf(context) ? 0 : 15,
                  ),
                  elevation: 3,
                  child: buildSingleTransaction(context, transaction)),
              GroupedPaidTransactions(
                transactions: var transactions,
                groupId: var groupedTransactionId,
                creator: var creator,
                total: var total,
                createdAt: var createdAt
              ) =>
                transactions.length > 1
                    ? ChatBubble(
                        clipper: ChatBubbleClipper1(
                          type: isSelf(context)
                              ? BubbleType.sendBubble
                              : BubbleType.receiverBubble,
                        ),
                        backGroundColor: Color.alphaBlend(
                            Theme.of(context)
                                .colorScheme
                                .surfaceTint
                                .withOpacity(isSelf(context) ? 0.5 : 0.2),
                            Theme.of(context).cardColor),
                        padding: EdgeInsets.only(
                          left: isSelf(context) ? 0 : 20,
                          right: !isSelf(context) ? 0 : 15,
                        ),
                        elevation: 3,
                        child: TransactionCard(
                          title: getTitle(context, transactions.first).$1,
                          amountColor: getTitle(context, transactions.first).$2,
                          amount: total,
                          createdAt: createdAt,
                          subtitle: const TextSpan(text: 'Payment split into'),
                          body: [
                            const Divider(),
                            ...transactions.reversed.map(
                              (split) => Row(
                                children: [
                                  Text(
                                    split.amount.toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(
                                    child: Text.rich(
                                      getGroupName(context, split.groupId),
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
                        ),
                      )
                    : ChatBubble(
                        clipper: ChatBubbleClipper1(
                          type: isSelf(context)
                              ? BubbleType.sendBubble
                              : BubbleType.receiverBubble,
                        ),
                        backGroundColor: Color.alphaBlend(
                            Theme.of(context)
                                .colorScheme
                                .surfaceTint
                                .withOpacity(isSelf(context) ? 0.5 : 0.2),
                            Theme.of(context).cardColor),
                        padding: EdgeInsets.only(
                          left: isSelf(context) ? 0 : 20,
                          right: !isSelf(context) ? 0 : 15,
                        ),
                        elevation: 3,
                        child: buildSingleTransaction(
                          context,
                          transactions.first,
                        ),
                      ),
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
                              child: Text.rich(
                                TextSpan(children: [
                                  const TextSpan(text: 'Settled '),
                                  TextSpan(
                                      text: e.$1.amount.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          )),
                                  const TextSpan(text: ' between '),
                                  getGroupName(context, e.$1.groupId),
                                  const TextSpan(text: ' and '),
                                  getGroupName(
                                      context, e.$2?.groupId ?? e.$1.groupId)
                                ]),
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
          title: getTitle(context, transaction).$1,
          amountColor: getTitle(context, transaction).$2,
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
  final TextSpan? subtitle;
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
                              Text.rich(
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
