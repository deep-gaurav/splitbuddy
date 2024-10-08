import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/extensions/expense_mix.dart';
import 'package:billdivide/extensions/num_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.var.gql.dart';
import 'package:billdivide/mixins/notification_refresher.dart';
import 'package:billdivide/models/expensecategory.dart';
import 'package:billdivide/screens/currency_converter.dart';
import 'package:billdivide/screens/expense.dart';
import 'package:billdivide/screens/payment_currency_selector.dart';
import 'package:billdivide/screens/transaction_page.dart';
import 'package:billdivide/utils/demo_data.dart';
import 'package:billdivide/utils/svg_icons.dart';
import 'package:billdivide/widgets/auto_scroll.dart';
import 'package:billdivide/widgets/spend_analysis.dart';
import 'package:collection/collection.dart';
import 'package:ferry_exec/src/operation_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:billdivide/__generated__/schema.schema.gql.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/interable_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/models/expensewith.dart';
import 'package:billdivide/models/transaction_group_types.dart';
import 'package:billdivide/screens/add_expense.dart';
import 'package:billdivide/screens/group.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/screens/payment_recorder.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';

class UserPage extends StatefulWidget {
  final GUserFields initialUser;

  const UserPage({super.key, required this.initialUser});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage>
    with WidgetsBindingObserver, NotificationRefresher {
  List<TransactionCardTypes> transactions = [];

  final ScrollController _scrollController = ScrollController();

  bool _loading = false;
  bool _ended = false;

  Map<String, List<TransactionCardTypes>> expenseGrouped = {};
  List<String> dates = [];
  ValueNotifier<bool> maintain = ValueNotifier(true);

  List<GtransactionWithUserData_getTransactionsMixExpenseWithUser> allData = [];

  @override
  void initState() {
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

  fetchData({bool forceFirst = false}) async {
    if (_loading) {
      return;
    }
    if (_ended && !forceFirst) {
      return;
    }
    if (mounted) {
      setState(() {
        _loading = true;
      });
    } else {
      return;
    }
    try {
      var client = await context.read<AppState>().client;
      var result = await client.executeCached(
        GtransactionWithUserReq(
          (b) => b.vars
            ..withUser = widget.initialUser.id
            ..limit = 10
            ..skip = forceFirst ? 0 : allData.length,
        ),
      );
      processResult(await result.first);
      result.listen((event) {
        processResult(event);
      });
    } finally {
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  void processResult(
      OperationResponse<GtransactionWithUserData, GtransactionWithUserVars>
          result) {
    if (result.data != null) {
      if (result.data!.getTransactionsMixExpenseWithUser.isEmpty && mounted) {
        setState(() {
          _ended = true;
        });
      }

      if (transactions.isEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          try {
            var pos = _scrollController.position.maxScrollExtent -
                _scrollController.position.pixels;

            _scrollController
                .jumpTo(_scrollController.position.maxScrollExtent - pos);
            _scrollController
                .jumpTo(_scrollController.position.maxScrollExtent - pos);
          } catch (e) {
            //ignore
          }
        });
      }

      for (var trans in result.data!.getTransactionsMixExpenseWithUser) {
        var tranIndex = allData.indexWhere((element) => trans.isEqual(element));
        if (tranIndex != -1) {
          allData[tranIndex] = trans;
        } else {
          allData.add(trans);
        }
      }
      for (var mix in result.data!.getTransactionsMixExpenseWithUser) {
        var transaction = mix.split;
        var expense = mix.expense;
        if (transaction != null) {
          if (transaction.transactionPartGroupId != null) {
            var group = transactions.firstWhereOrNull((element) =>
                (element is GroupedCrossSettlementTransactions &&
                    element.groupId == transaction.transactionPartGroupId) ||
                (element is GroupedPaidTransactions &&
                    element.groupId == transaction.transactionPartGroupId) ||
                (element is CurrencyConversionTransactions &&
                    element.groupId == transaction.transactionPartGroupId));
            if (group != null) {
              switch (group) {
                case SingleTransaction():
                  break;
                case GroupedPaidTransactions(transactions: var transactions):
                  var transIndex = transactions
                      .indexWhere((element) => element.id == transaction.id);
                  if (transIndex != -1) {
                    transactions[transIndex] = transaction;
                  } else {
                    transactions.add(transaction);
                  }
                case GroupedCrossSettlementTransactions(
                    transactions: var transactions
                  ):
                  var transIndex = transactions
                      .indexWhere((element) => element.id == transaction.id);
                  if (transIndex != -1) {
                    transactions[transIndex] = transaction;
                  } else {
                    transactions.add(transaction);
                  }

                case CurrencyConversionTransactions(
                    transactions: var transactions
                  ):
                  var transIndex = transactions
                      .indexWhere((element) => element.id == transaction.id);
                  if (transIndex != -1) {
                    transactions[transIndex] = transaction;
                  } else {
                    transactions.add(transaction);
                  }
              }
            } else {
              var transIndex = transactions.indexWhere((element) =>
                  element is SingleTransaction &&
                  element.transaction?.id == transaction.id);

              if (transIndex != -1) {
                transactions[transIndex] = transaction.transactionType ==
                        GTransactionType.CROSS_GROUP_SETTLEMENT
                    ? GroupedCrossSettlementTransactions(
                        transactions: [transaction],
                        groupId: transaction.transactionPartGroupId!)
                    : transaction.transactionType ==
                            GTransactionType.CURRENCY_CONVERSION
                        ? CurrencyConversionTransactions(
                            groupId: transaction.transactionPartGroupId!,
                            transactions: [transaction],
                          )
                        : GroupedPaidTransactions(
                            groupId: transaction.transactionPartGroupId!,
                            transactions: [transaction],
                          );
              } else {
                transactions.add(
                  transaction.transactionType ==
                          GTransactionType.CROSS_GROUP_SETTLEMENT
                      ? GroupedCrossSettlementTransactions(
                          transactions: [transaction],
                          groupId: transaction.transactionPartGroupId!)
                      : transaction.transactionType ==
                              GTransactionType.CURRENCY_CONVERSION
                          ? CurrencyConversionTransactions(
                              groupId: transaction.transactionPartGroupId!,
                              transactions: [transaction],
                            )
                          : GroupedPaidTransactions(
                              groupId: transaction.transactionPartGroupId!,
                              transactions: [transaction],
                            ),
                );
              }
            }
          } else {
            var transIndex = transactions.indexWhere((element) =>
                element is SingleTransaction &&
                element.transaction?.id == transaction.id);
            if (transIndex != -1) {
              transactions[transIndex] = SingleTransaction(
                  transaction: transaction, expenseBasic: expense);
            } else {
              transactions.add(SingleTransaction(
                  transaction: transaction, expenseBasic: expense));
            }
          }
        } else if (expense != null) {
          var transIndex = transactions.indexWhere((element) =>
              element is SingleTransaction &&
              element.expenseBasic?.id == expense.id);
          if (transIndex != -1) {
            transactions[transIndex] = SingleTransaction(
                transaction: transaction, expenseBasic: expense);
          } else {
            transactions.add(SingleTransaction(
                transaction: transaction, expenseBasic: expense));
          }
        }
      }
      generateGrouped();
      if (result.data?.getTransactionsMixExpenseWithUser != null &&
          result.data!.getTransactionsMixExpenseWithUser.isNotEmpty) {
        maintain.value = true;
      }
    }
  }

  generateGrouped() {
    expenseGrouped = {};
    transactions.sort((a, b) => b.transactionAt.compareTo(a.transactionAt));
    for (var transaction in transactions) {
      var date = DateFormat('d MMM y')
          .format(DateTime.parse(transaction.transactionAt).toLocal());
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

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = context.select<AppState, GUserFields?>((state) =>
            state.interactedUsers.firstWhereOrNull(
                (element) => element.id == widget.initialUser.id)) ??
        (context.read<AppState>().user!);

    var isSelf = (user.id == context.read<AppState>().user?.id);

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
                      Expanded(
                        child: AutoScroll(
                          child: Text(
                              '${user.displayName}${isSelf ? ' (You)' : ''}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (_loading)
                SliverList.builder(
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return Shimmer(
                      gradient: switch (Theme.of(context).brightness) {
                        Brightness.dark => kShimmerGradientDark,
                        Brightness.light => kShimmerGradientLight,
                      },
                      child: UserTransactionCard(
                        user: context.read<AppState>().user!,
                        maybeGroupTransaction: SingleTransaction(
                          expenseBasic: getDemoExpense,
                        ),
                      ),
                    );
                  },
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
                            user: user,
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
              if (isSelf)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SpendAnalysis(
                      key: Key(context.select<AppState, String>(
                        (state) =>
                            state.userGroups
                                .firstWhereOrNull((element) =>
                                    element.name == null &&
                                    element.members.length == 1)
                                ?.id ??
                            'None',
                      )),
                      groupId: context.select<AppState, String>(
                        (state) =>
                            state.userGroups
                                .firstWhereOrNull((element) =>
                                    element.name == null &&
                                    element.members.length == 1)
                                ?.id ??
                            'None',
                      ),
                    ),
                  ),
                )
              else
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: UserSummaryWidget(
                      user: (user as GUserPaysFields),
                      onSimplify: (splitTransactions) {
                        if (!transactions.any((element) =>
                            element is GroupedCrossSettlementTransactions &&
                            element.groupId ==
                                splitTransactions
                                    .first.transactionPartGroupId!)) {
                          transactions.add(
                            GroupedCrossSettlementTransactions(
                              groupId: splitTransactions
                                  .first.transactionPartGroupId!,
                              transactions: splitTransactions,
                            ),
                          );
                        }
                        fetchData(forceFirst: true);
                        generateGrouped();
                      },
                    ),
                  ),
                ),
            ],
          )),
          const Divider(),
        ],
      ),
      bottomNavigationBar: ButtonBar(
        children: [
          if (!isSelf)
            ElevatedButton.icon(
              onPressed: () async {
                var result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        CurrencyConverter(user: (user as GUserPaysFields)),
                  ),
                );
                if (result is List<GSplitTransactionFields>) {
                  transactions.add(CurrencyConversionTransactions(
                      transactions: result,
                      groupId: result.first.transactionPartGroupId!));
                  fetchData(forceFirst: true);
                  generateGrouped();
                }
              },
              icon: const Icon(Icons.currency_exchange_rounded),
              label: const Text(
                'Convert Currency',
              ),
            ),
          ElevatedButton.icon(
            icon: const Icon(Icons.sell),
            onPressed: () async {
              var expense = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CreateExpense(
                    searchGroup: true,
                    expenseWith: isSelf
                        ? ExpenseWithSelf()
                        : ExpenseWithPeople(users: [UserWithUser(user: user)]),
                  ),
                ),
              );
              if (expense is GNewExpenseFields) {
                if (expense.splits.isNotEmpty) {
                  for (var split in expense.splits) {
                    if (!transactions.any((element) =>
                        element is SingleTransaction &&
                        element.transaction?.id == split.id)) {
                      transactions.add(SingleTransaction(
                        transaction: split,
                        expenseBasic: split.expense,
                      ));
                    }
                  }
                } else {
                  if (!transactions.any((element) =>
                      element is SingleTransaction &&
                      element.expenseBasic?.id == expense.id)) {
                    transactions.add(SingleTransaction(expenseBasic: expense));
                  }
                }
                fetchData(forceFirst: true);
                generateGrouped();
              }
            },
            label: const Text(
              "Add Expense",
            ),
          )
        ],
      ),
      floatingActionButton: isSelf
          ? null
          : FloatingActionButton.extended(
              icon: const Icon(Icons.payments),
              onPressed: () async {
                dynamic expense;
                if ((user as GUserPaysFields).toPay.length == 1) {
                  expense = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PaymentRecorder(
                        withUser: user,
                        initialCurrencyId: user.toPay.first.currencyId,
                        initialAmount: user.toPay.first
                            .getAmountFormatted(context.read())
                            .toPrettyFixed(
                              context
                                  .read<AppState>()
                                  .currencies[user.toPay.first.currencyId]!
                                  .decimals,
                            ),
                      ),
                    ),
                  );
                } else if (user.toPay.isEmpty) {
                  expense = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PaymentRecorder(
                        withUser: user,
                        initialCurrencyId:
                            context.read<AppState>().defaultCurrency!.id,
                      ),
                    ),
                  );
                } else {
                  expense = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PaymentCurrencySelector(
                        user: user,
                        toPay: user.toPay,
                        toReceive: user.toReceive,
                      ),
                    ),
                  );
                }

                if (expense is List<GSplitTransactionFields>) {
                  for (var split in expense) {
                    if (!transactions.any((element) =>
                        element is SingleTransaction &&
                        element.transaction?.id == split.id)) {
                      transactions.add(SingleTransaction(
                        transaction: split,
                        expenseBasic: split.expense,
                      ));
                    }
                  }
                  fetchData(forceFirst: true);
                  generateGrouped();
                }
              },
              label: const Text(
                "Record Payment",
              ),
            ),
    );
  }

  @override
  void onNotificationRefresh() {
    fetchData(forceFirst: true);
  }
}

class UserTransactionCard extends StatelessWidget {
  final TransactionCardTypes maybeGroupTransaction;
  final GGroupFields? userGroup;
  final GUserFields user;

  const UserTransactionCard(
      {super.key,
      required this.maybeGroupTransaction,
      this.userGroup,
      required this.user});

  bool getIsReceiver(BuildContext context, GSplitFields transaction) =>
      context.read<AppState>().user?.id == transaction.fromUser.id;

  bool isSelf(BuildContext context) =>
      context.read<AppState>().user?.id == maybeGroupTransaction.creatorId;

  (TextSpan, Color?) getTitle(BuildContext context, GSplitFields transaction) {
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
              text: transaction.fromUser.shortName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          neutralYellow.primary,
        );
      }
    } else if (transaction.transactionType == GTransactionType.EXPENSE_SPLIT ||
        transaction.transactionType == GTransactionType.CURRENCY_CONVERSION) {
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

  TextSpan? subTitle(BuildContext context, GSplitFields transaction) {
    if (transaction.transactionType == GTransactionType.CASH_PAID ||
        transaction.transactionType == GTransactionType.EXPENSE_SPLIT ||
        transaction.transactionType == GTransactionType.CURRENCY_CONVERSION) {
      if (transaction.groupId == userGroup?.id) {
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
            text: context.read<AppState>().getGroupName(transaction.groupId),
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
              SingleTransaction(
                transaction: var transaction,
                expenseBasic: var expense
              ) =>
                InkWell(
                  onTap: () async {
                    if (expense != null) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ExpensePage(
                            expenseFields: expense,
                            expenseWith: ExpenseWithPeople(
                              users: [
                                UserWithUser(user: user),
                              ],
                            ),
                          ),
                        ),
                      );
                    } else if (transaction != null) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => TransactionPage(
                            transaction: transaction,
                          ),
                        ),
                      );
                    }
                  },
                  child: ChatBubble(
                    clipper: ChatBubbleClipper1(
                      type: isSelf(context)
                          ? BubbleType.sendBubble
                          : BubbleType.receiverBubble,
                    ),
                    backGroundColor: isSelf(context)
                        ? Theme.of(context).colorScheme.secondaryContainer
                        : Theme.of(context).colorScheme.tertiaryContainer,
                    padding: EdgeInsets.only(
                      left: isSelf(context) ? 0 : 20,
                      right: !isSelf(context) ? 0 : 15,
                    ),
                    elevation: 0,
                    child: buildSingleTransaction(
                      context,
                      transaction: transaction,
                      expense: expense,
                    ),
                  ),
                ),
              CurrencyConversionTransactions(transactions: var transactions) =>
                ChatBubble(
                  clipper: ChatBubbleClipper1(
                    type: isSelf(context)
                        ? BubbleType.sendBubble
                        : BubbleType.receiverBubble,
                  ),
                  backGroundColor: isSelf(context)
                      ? Theme.of(context).colorScheme.secondaryContainer
                      : Theme.of(context).colorScheme.tertiaryContainer,
                  padding: EdgeInsets.only(
                    left: isSelf(context) ? 0 : 20,
                    right: !isSelf(context) ? 0 : 15,
                  ),
                  elevation: 0,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Converted',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: AutoScroll(
                              child: Row(
                                children: [
                                  Text(
                                    transactions.first.amount
                                        .getPretty(context),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w800,
                                          color: ColorUtils.getNeutralYellow(
                                                  context)
                                              .primary,
                                        ),
                                  ),
                                  const Icon(Icons.chevron_right),
                                  if (transactions.length > 1)
                                    Text(
                                      transactions[1].amount.getPretty(context),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w800,
                                            color: ColorUtils.getNeutralYellow(
                                                    context)
                                                .primary,
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          if (transactions.length > 1)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ...[
                                    Text.rich(
                                      getTitle(context, transactions[1]).$1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    Text.rich(
                                      subTitle(context, transactions[1]) ??
                                          const TextSpan(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                  ]
                                ],
                              ),
                            ),
                        ],
                      ),
                      Positioned(
                        bottom: 3,
                        right: 15,
                        child: Text(
                          DateFormat("h:mm a").format(
                            DateTime.parse(transactions.first.transactionAt)
                                .toLocal(),
                          ),
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              GroupedPaidTransactions(
                transactions: var transactions,
                groupId: var groupedTransactionId,
                creatorId: var creatorId,
                total: var total,
                transactionAt: var transactionAt
              ) =>
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TransactionPage(
                          transaction: transactions.first,
                        ),
                      ),
                    );
                  },
                  child: transactions.length > 1
                      ? ChatBubble(
                          clipper: ChatBubbleClipper1(
                            type: isSelf(context)
                                ? BubbleType.sendBubble
                                : BubbleType.receiverBubble,
                          ),
                          backGroundColor: isSelf(context)
                              ? Theme.of(context).colorScheme.secondaryContainer
                              : Theme.of(context).colorScheme.tertiaryContainer,
                          padding: EdgeInsets.only(
                            left: isSelf(context) ? 0 : 20,
                            right: !isSelf(context) ? 0 : 15,
                          ),
                          elevation: 0,
                          child: TransactionCard(
                            title: getTitle(context, transactions.first).$1,
                            amountColor:
                                getTitle(context, transactions.first).$2,
                            amount: total,
                            transactionAt: transactionAt,
                            subtitle:
                                const TextSpan(text: 'Payment split into'),
                            body: [
                              const Divider(),
                              ...transactions.reversed.map(
                                (split) => Row(
                                  children: [
                                    Text(
                                      split.amount.getPrettyAbs(context),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
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
                          backGroundColor: isSelf(context)
                              ? Theme.of(context).colorScheme.secondaryContainer
                              : Theme.of(context).colorScheme.tertiaryContainer,
                          padding: EdgeInsets.only(
                            left: isSelf(context) ? 0 : 20,
                            right: !isSelf(context) ? 0 : 15,
                          ),
                          elevation: 0,
                          child: buildSingleTransaction(
                            context,
                            transaction: transactions.first,
                          ),
                        ),
                ),
              GroupedCrossSettlementTransactions(
                transactionAt: var transactionAt,
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
                                      text: e.$1.amount.getPrettyAbs(context),
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
                                DateTime.parse(transactionAt).toLocal(),
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

  Widget buildSingleTransaction(BuildContext context,
      {GSplitFields? transaction, GExpenseBasic? expense}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 5,
        ),
        if (expense != null)
          ExpenseCard(
            expense: expense,
            transactionAt: transaction == null ? expense.transactionAt : null,
          ),
        if (transaction != null)
          TransactionCard(
            title: getTitle(context, transaction).$1,
            amountColor: getTitle(context, transaction).$2,
            amount: transaction.amount,
            transactionAt: transaction.transactionAt,
            subtitle: subTitle(context, transaction),
            note: transaction.note,
            imageId: transaction.imageId,
          ),
      ],
    );
  }
}

class ExpenseCard extends StatelessWidget {
  final GExpenseBasic expense;
  final String? transactionAt;

  const ExpenseCard({super.key, required this.expense, this.transactionAt});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: transactionAt != null ? 8 : 0),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            // color: Theme.of(context).highlightColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgIcon(
                      asset: Category.categoryFromId(expense.category).iconPath,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      expense.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
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
                      expense.amount.getPretty(context),
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ],
                ),
                if (expense.imageId != null)
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Attached Image'),
                      ],
                    ),
                  ),
                if (expense.note != null)
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.note),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Attached Note'),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
        if (transactionAt != null)
          Positioned(
            bottom: 3,
            right: 20,
            child: Text(
              DateFormat("h:mm a").format(
                DateTime.parse(transactionAt!).toLocal(),
              ),
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
      ],
    );
  }
}

class TransactionCard extends StatelessWidget {
  final double elevation;
  final TextSpan title;
  final GAmountFields? amount;
  final TextSpan? subtitle;
  final String? transactionAt;
  final List<Widget> body;
  final EdgeInsets padding;
  final Color? amountColor;
  final String? imageId;
  final String? note;

  const TransactionCard({
    super.key,
    this.elevation = 2.0,
    required this.title,
    this.amount,
    this.subtitle,
    this.transactionAt,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    this.body = const <Widget>[],
    this.amountColor,
    this.imageId,
    this.note,
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
                AutoScroll(
                  child: IntrinsicWidth(
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (amount != null) ...[
                            Text(
                              amount!.getPretty(context),
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: amountColor,
                                  ),
                            ),
                          ],
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text.rich(title),
                              if (subtitle != null)
                                Text.rich(
                                  subtitle!,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
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
                ),
                if (imageId != null)
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Attached Image'),
                      ],
                    ),
                  ),
                if (note != null)
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.note),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Attached Note'),
                      ],
                    ),
                  ),
                ...body,
              ],
            ),
          ),
          if (transactionAt != null)
            Positioned(
              bottom: -5,
              right: -5,
              child: Text(
                DateFormat("h:mm a").format(
                  DateTime.parse(transactionAt!).toLocal(),
                ),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
        ],
      ),
    );
  }
}

class UserSummaryWidget extends StatelessWidget {
  const UserSummaryWidget({
    super.key,
    required this.user,
    required this.onSimplify,
  });

  final GUserPaysFields user;
  final Function(List<GSplitTransactionFields> transactions) onSimplify;

  @override
  Widget build(BuildContext context) {
    ColorScheme scheme = ColorUtils.getMainScheme(context);
    ColorScheme neutralYellow = ColorUtils.getNeutralYellow(context);
    ColorScheme neutralBlue = ColorUtils.getNeutralBlue(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              'User Summary',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Row(
              children: [
                if (user.toReceive.isNotEmpty)
                  Expanded(
                      child: AutoScroll(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ...user.toReceive.map(
                              (amount) => Text(
                                amount.getPrettyAbs(context),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: scheme.primary,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.call_received,
                          color: scheme.primary,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'To Receive',
                          style: TextStyle(color: scheme.primary),
                        ),
                      ],
                    ),
                  )),
                if (user.toPay.isNotEmpty)
                  Expanded(
                    child: AutoScroll(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ...user.toPay.map(
                                (amount) => Text(
                                  amount.getPrettyAbs(context),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: scheme.error,
                                      ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call_made,
                            color: scheme.error,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'To Pay',
                            style: TextStyle(
                              color: scheme.error,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ],
            ),
            const Divider(),
            if (user.owes
                .sorted((a, b) =>
                    b.amount.amount.abs().compareTo(a.amount.amount.abs()))
                .where((element) => element.amount.amount != 0)
                .isEmpty)
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'settled with you ',
                      style: TextStyle(
                        color: neutralBlue.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ...user.owes
                .sorted((a, b) =>
                    b.amount.amount.abs().compareTo(a.amount.amount.abs()))
                .where((element) => element.amount.amount != 0)
                .map<Widget>(
              (member) {
                var group = context
                    .read<AppState>()
                    .userGroups
                    .firstWhere((element) => element.id == member.groupId);

                return Align(
                  alignment: Alignment.centerLeft,
                  child: AutoScroll(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: FittedBox(
                            child: GroupIconWidget(
                              group: group,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          group.getDisplayName(context.read()),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        if (member.amount.amount < 0)
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'owes you ',
                                  style: TextStyle(
                                    color: scheme.primary,
                                  ),
                                ),
                                TextSpan(
                                  text: member.amount.getPrettyAbs(context),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          color: scheme.primary,
                                          fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          )
                        else if (member.amount.amount > 0)
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'you owe ',
                                  style: TextStyle(
                                    color: scheme.error,
                                  ),
                                ),
                                TextSpan(
                                  text: member.amount.getPrettyAbs(context),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          color: scheme.error,
                                          fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          )
                        else
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'settled with you ',
                                  style: TextStyle(
                                    color: neutralBlue.primary,
                                  ),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                );
              },
            ).intersperse(
              const SizedBox(
                height: 10,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // if (user.toPay > 0 && user.toReceive > 0) ...[
            //   const SizedBox(
            //     height: 5,
            //   ),
            //   FilledButton.icon(
            //     icon: const SvgIcon(asset: SvgIcons.moneyTransfer),
            //     onPressed: () async {
            //       var appstate = context.read<AppState>();
            //       var shouldSimplify = await showDialog(
            //         context: context,
            //         builder: (context) => AlertDialog(
            //           title: const Text('Simplify'),
            //           icon: const SvgIcon(
            //             asset: SvgIcons.moneyTransfer,
            //             size: 40,
            //           ),
            //           content: Text.rich(
            //             TextSpan(children: [
            //               const TextSpan(text: 'You currently '),
            //               TextSpan(
            //                 text: 'owe ',
            //                 children: [
            //                   TextSpan(
            //                     text: user.toPay.toString(),
            //                     style: const TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                   TextSpan(
            //                     text: ' to ${user.shortName} ',
            //                   )
            //                 ],
            //                 style: TextStyle(
            //                   color: scheme.error,
            //                 ),
            //               ),
            //               const TextSpan(text: 'and they '),
            //               TextSpan(
            //                 text: 'owe ',
            //                 children: [
            //                   TextSpan(
            //                     text: user.toReceive.toString(),
            //                     style: const TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                   const TextSpan(
            //                     text: ' to you ',
            //                   )
            //                 ],
            //                 style: TextStyle(
            //                   color: scheme.primary,
            //                 ),
            //               ),
            //               const TextSpan(text: 'across different groups.'),
            //               const TextSpan(
            //                 text:
            //                     '\n\nBy simplifying balances, we can combine these into a single, clear amount.,',
            //               ),
            //               if (user.toPay > user.toReceive) ...[
            //                 TextSpan(text: '\n• You\'ll ', children: [
            //                   TextSpan(
            //                     text: 'owe ${user.displayName} ',
            //                     children: [
            //                       TextSpan(
            //                         text: '${user.toPay - user.toReceive}',
            //                         style: const TextStyle(
            //                           fontWeight: FontWeight.bold,
            //                         ),
            //                       )
            //                     ],
            //                     style: TextStyle(color: scheme.error),
            //                   ),
            //                   const TextSpan(text: ' in total'),
            //                 ]),
            //                 const TextSpan(text: '\n• They\'ll owe you nothing')
            //               ] else ...[
            //                 TextSpan(text: '\n• They\'ll ', children: [
            //                   TextSpan(
            //                     text: 'owe you ',
            //                     children: [
            //                       TextSpan(
            //                         text: '${user.toReceive - user.toPay}',
            //                         style: const TextStyle(
            //                           fontWeight: FontWeight.bold,
            //                         ),
            //                       )
            //                     ],
            //                     style: TextStyle(color: scheme.primary),
            //                   ),
            //                   const TextSpan(text: ' in total'),
            //                 ]),
            //                 TextSpan(
            //                     text:
            //                         '\n• You\'ll owe ${user.displayName} nothing')
            //               ],
            //             ]),
            //           ),
            //           actions: [
            //             ElevatedButton(
            //               onPressed: () {
            //                 Navigator.of(context).pop(false);
            //               },
            //               child: const Text('Cancel'),
            //             ),
            //             FilledButton(
            //               onPressed: () {
            //                 Navigator.of(context).pop(true);
            //               },
            //               child: const Text('Simplify'),
            //             )
            //           ],
            //         ),
            //       );

            //       if (shouldSimplify == true) {
            //         var result = await appstate.simplifyUser(userId: user.id);
            //         onSimplify(result);
            //       }
            //     },
            //     label: const Text(
            //       "Simplify",
            //     ),
            //   ),
            // ]
          ],
        ),
      ),
    );
  }
}
