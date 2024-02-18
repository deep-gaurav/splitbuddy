import 'package:billdivide/__generated__/schema.schema.gql.dart';
import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/group_obj.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/mixins/notification_refresher.dart';
import 'package:billdivide/screens/add_expense.dart';
import 'package:billdivide/screens/group.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/screens/user.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:billdivide/widgets/auto_scroll.dart';
import 'package:collection/collection.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory>
    with WidgetsBindingObserver, NotificationRefresher {
  List<GroupTransactionObject> expenses = [];

  final ScrollController _scrollController = ScrollController();

  bool _loading = false;

  ValueNotifier<bool> maintain = ValueNotifier(true);
  Map<String, List<GroupTransactionObject>> expenseGrouped = {};
  List<String> dates = [];

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
    if (!mounted) {
      return;
    }
    setState(() {
      _loading = true;
    });
    try {
      var client = await context.read<AppState>().client;
      var result = await client.execute(
        GgetTransactionsReq(
          (b) => b.vars
            ..limit = 10
            ..fromTime = forceFirst ? null : expenses.lastOrNull?.createdAt,
        ),
      );
      if (result.data != null) {
        if (expenses.isEmpty && mounted) {
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
            // await Future.delayed(Durations.short1);
            _scrollController.jumpTo(
              _scrollController.position.maxScrollExtent,
            );
          });
        }
        for (var trans in result.data!.getTransactions) {
          var expense = expenses.firstWhereOrNull((element) =>
              element is Expense && (element.expense.id == trans.expense?.id));
          if (trans.expense != null && expense == null) {
            expense ??= Expense(expense: trans.expense!, splits: []);
            expenses.add(expense);
          }
          if (expense != null && trans.split != null) {
            if ((expense as Expense)
                .splits
                .every((element) => element.id != trans.split!.id)) {
              expense.splits.add(trans.split!);
            }
          } else if (trans.split?.transactionType ==
              GTransactionType.CURRENCY_CONVERSION) {
            if (expenses.firstWhereOrNull((element) =>
                    element is CurrencyConversion &&
                    element.partGroupId == trans.split!.transactionPartGroupId)
                case CurrencyConversion(splits: var splits)) {
              splits.add(trans.split!);
            } else {
              expenses.add(CurrencyConversion(splits: [trans.split!]));
            }
          } else if (trans.split != null) {
            if (expenses.every((element) =>
                element is Split && element.split.id != trans.split!.id)) {
              expenses.add(Split(split: trans.split!));
            }
          }
        }

        if (result.data?.getTransactions != null &&
            result.data!.getTransactions.isNotEmpty) {
          maintain.value = true;
        }
        generateGrouped();
      }
    } finally {
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  generateGrouped() {
    expenses.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    expenseGrouped.clear();
    for (var expense in expenses) {
      var date = DateFormat('d MMM y')
          .format(DateTime.parse(expense.createdAt).toLocal());
      if (expenseGrouped[date] == null) {
        expenseGrouped[date] = [expense];
      } else {
        expenseGrouped[date]?.add(expense);
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
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: MaintiningScrollPhysics(maintain: maintain),
              controller: _scrollController,
              slivers: [
                const SliverAppBar.large(
                  primary: true,
                  pinned: true,
                  title: Text('Transactions'),
                ),
                if (expenseGrouped.isEmpty)
                  const SliverFillRemaining()
                else ...[
                  const SliverPadding(padding: EdgeInsets.only(top: 40)),
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
                              var mix = expenseGrouped[entry]![
                                  expenseGrouped[entry]!.length - 1 - index];
                              var isSelf = mix.creatorId ==
                                  context.read<AppState>().user!.id;

                              var creator = context
                                  .read<AppState>()
                                  .getUser(mix.creatorId);
                              bool isInvoled = (mix is Split) ||
                                  (mix is Expense && mix.splits.isNotEmpty);

                              return TransactionHisotryTransactionCard(
                                  isSelf: isSelf, creator: creator, mix: mix);
                            },
                            childCount: expenseGrouped[entry]!.length,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ButtonBar(
        children: [
          ElevatedButton.icon(
            icon: const Icon(Icons.sell),
            onPressed: () async {
              var expense = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateExpense(
                    searchGroup: true,
                  ),
                ),
              );
              if (expense is GNewExpenseFields) {
                setState(() {
                  expenses.add(
                    Expense(
                      expense: expense,
                      splits: expense.splits.toList(),
                    ),
                  );
                  fetchData(forceFirst: true);
                  generateGrouped();
                });
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
                  // await Future.delayed(Durations.short1);
                  _scrollController
                      .jumpTo(_scrollController.position.maxScrollExtent);
                });
              }
            },
            label: const Text(
              "Add Expense",
            ),
          )
        ],
      ),
    );
  }

  @override
  void onNotificationRefresh() {
    fetchData(forceFirst: true);
  }
}

class TransactionHisotryTransactionCard extends StatelessWidget {
  const TransactionHisotryTransactionCard({
    super.key,
    required this.isSelf,
    required this.creator,
    required this.mix,
  });

  final bool isSelf;
  final GUserFields? creator;
  final GroupTransactionObject mix;

  (TextSpan, Color?) getTitle(BuildContext context, GSplitFields? split) {
    ColorScheme scheme = ColorUtils.getMainScheme(context);
    ColorScheme neutralYellow = ColorUtils.getNeutralYellow(context);
    ColorScheme neutralBlue = ColorUtils.getNeutralBlue(context);
    if (split == null) {
      return (const TextSpan(text: 'Not involved '), null);
    } else {
      var isSelf = split.creatorId == context.read<AppState>().user!.id;
      if (split.transactionType == GTransactionType.CASH_PAID) {
        if (isSelf) {
          return (
            TextSpan(children: [
              TextSpan(
                  text: 'you paid\n',
                  style: TextStyle(
                    color: neutralYellow.primary,
                  )),
              TextSpan(
                text: split.fromUser.shortName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
            neutralYellow.primary,
          );
        } else {
          return (
            TextSpan(children: [
              TextSpan(
                text: split.toUser.shortName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                  text: '\npaid you',
                  style: TextStyle(
                    color: neutralYellow.primary,
                  )),
            ]),
            neutralYellow.primary,
          );
        }
      } else if (split.transactionType == GTransactionType.EXPENSE_SPLIT) {
        if (isSelf) {
          return (
            TextSpan(children: [
              TextSpan(
                text: split.fromUser.shortName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '\nowes you',
                style: TextStyle(
                  color: scheme.primary,
                ),
              ),
            ]),
            scheme.primary,
          );
        } else {
          return (
            TextSpan(children: [
              TextSpan(
                text: 'you owe\n',
                style: TextStyle(
                  color: scheme.error,
                ),
              ),
              TextSpan(
                text: split.toUser.shortName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            scheme.error
          );
        }
      } else if (split.transactionType ==
          GTransactionType.CURRENCY_CONVERSION) {
        if (isSelf) {
          return (
            TextSpan(children: [
              TextSpan(
                text: split.fromUser.shortName,
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
        } else {
          return (
            TextSpan(children: [
              TextSpan(
                text: 'you owe ',
                style: TextStyle(
                  color: scheme.error,
                ),
              ),
              TextSpan(
                text: split.toUser.shortName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            scheme.error
          );
        }
      } else if (split.transactionType ==
          GTransactionType.CROSS_GROUP_SETTLEMENT) {
        var isTo = split.toUserId == context.read<AppState>().user!.id;
        return (
          TextSpan(children: [
            TextSpan(
                text: 'Settled ${isTo ? 'from' : 'from'}\n',
                style: TextStyle(color: neutralBlue.primary)),
            TextSpan(
              text: context.read<AppState>().getGroupName(split.withGroupId!),
              style: const TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ]),
          neutralBlue.primary
        );
      }
      return (const TextSpan(), null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      alignment: isSelf ? Alignment.centerRight : Alignment.centerLeft,
      child: Align(
        alignment: isSelf ? Alignment.centerRight : Alignment.centerLeft,
        child: IntrinsicWidth(
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ChatBubble(
                  clipper: ChatBubbleClipper1(
                    type: isSelf
                        ? BubbleType.sendBubble
                        : BubbleType.receiverBubble,
                  ),
                  backGroundColor: isSelf
                      ? Theme.of(context).colorScheme.secondaryContainer
                      : Theme.of(context).colorScheme.tertiaryContainer,
                  padding: EdgeInsets.only(
                    left: isSelf ? 0 : 20,
                    right: !isSelf ? 0 : 15,
                  ),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            if (!isSelf && creator != null) ...[
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: FittedBox(
                                  child: UserIconWidget(
                                    user: creator!,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                creator!.displayName,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('in '),
                            ],
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: FittedBox(
                                child: GroupIconWidget(
                                  group: context
                                      .read<AppState>()
                                      .userGroups
                                      .firstWhere((element) =>
                                          element.id == mix.groupId),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              context
                                  .read<AppState>()
                                  .userGroups
                                  .firstWhere(
                                      (element) => element.id == mix.groupId)
                                  .getDisplayName(context.read()),
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        switch (mix) {
                          Expense(expense: var expense, splits: var splits) =>
                            Column(
                              children: [
                                ...[
                                  ExpenseCard(expense: expense),
                                  const SizedBox(
                                    height: 5,
                                    width: 5,
                                    child: DottedLine(),
                                  ),
                                  if (splits.isNotEmpty) ...[
                                    ...splits.map(
                                      (split) => TransactionCard(
                                        title: getTitle(context, split).$1,
                                        amountColor:
                                            getTitle(context, split).$2,
                                        amount: split.amount,
                                        elevation: 0,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    )
                                  ] else
                                    const TransactionCard(
                                        title: TextSpan(text: 'Not Involved')),
                                ]
                              ],
                            ),
                          Split(split: var splits) => TransactionCard(
                              title: getTitle(context, splits).$1,
                              amountColor: getTitle(context, splits).$2,
                              amount: splits.amount,
                              elevation: 0,
                            ),
                          CurrencyConversion(splits: var splits) => Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Converted',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: AutoScroll(
                                    child: Row(
                                      children: [
                                        Text(
                                          splits.first.amount
                                              .getPretty(context),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium
                                              ?.copyWith(
                                                fontWeight: FontWeight.w800,
                                                color:
                                                    ColorUtils.getNeutralYellow(
                                                            context)
                                                        .primary,
                                              ),
                                        ),
                                        const Icon(Icons.chevron_right),
                                        if (splits.length > 1)
                                          Text(
                                            splits[1].amount.getPretty(context),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w800,
                                                  color: ColorUtils
                                                          .getNeutralYellow(
                                                              context)
                                                      .primary,
                                                ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (splits.length > 1)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        ...[
                                          Text.rich(
                                            getTitle(context, splits[1]).$1,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                          // Text.rich(
                                          //   subTitle(
                                          //           context,
                                          //           transactions[1]) ??
                                          //       const TextSpan(),
                                          //   style: Theme.of(
                                          //           context)
                                          //       .textTheme
                                          //       .labelLarge,
                                          // ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ]
                                      ],
                                    ),
                                  ),
                              ],
                            )
                        }
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 20,
                child: Text(
                  DateFormat("h:mm a").format(
                    DateTime.parse(mix.createdAt).toLocal(),
                  ),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
