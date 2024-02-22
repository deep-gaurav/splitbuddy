import 'dart:math';

import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/mixins/notification_refresher.dart';
import 'package:billdivide/screens/expense.dart';
import 'package:billdivide/screens/transaction_page.dart';
import 'package:billdivide/widgets/auto_scroll.dart';
import 'package:billdivide/widgets/spend_analysis.dart';
import 'package:collection/collection.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:billdivide/__generated__/schema.schema.gql.dart';
import 'package:billdivide/extensions/expense_mix.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/group_obj.dart';
import 'package:billdivide/extensions/interable_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.ast.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/models/expensewith.dart';
import 'package:billdivide/screens/add_expense.dart';
import 'package:billdivide/screens/group_info.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/screens/user.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';

class Group extends StatefulWidget {
  final GGroupFields group;
  const Group({super.key, required this.group});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group>
    with
        SingleTickerProviderStateMixin,
        WidgetsBindingObserver,
        NotificationRefresher {
  List<GroupTransactionObject> expenses = [];

  final ScrollController _scrollController = ScrollController();

  bool _loading = false;

  ColorScheme get scheme => ColorUtils.getMainScheme(context);
  ColorScheme get neutralYellow => ColorUtils.getNeutralYellow(context);
  ColorScheme get neutralBlue => ColorUtils.getNeutralBlue(context);

  ValueNotifier<bool> maintain = ValueNotifier(true);
  Map<String, List<GroupTransactionObject>> expenseGrouped = {};
  List<String> dates = [];

  List<GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup> allData =
      [];

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
        GtransactionMixExpenseReq(
          (b) => b.vars
            ..groupId = widget.group.id
            ..limit = 10
            ..skip = forceFirst ? 0 : allData.length,
        ),
      );
      if (result.data != null) {
        if (allData.isEmpty && mounted) {
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
            // await Future.delayed(Durations.short1);
            _scrollController.jumpTo(
              _scrollController.position.maxScrollExtent,
            );
          });
        }
        for (var trans in result.data!.getTransactionsMixExpenseWithGroup) {
          if (!allData.any((element) => trans.isEqual(element))) {
            allData.add(trans);
          }
        }
        for (var trans in result.data!.getTransactionsMixExpenseWithGroup) {
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
            if (!expenses.any((element) =>
                element is Split && element.split.id == trans.split!.id)) {
              expenses.add(Split(split: trans.split!));
            }
          }
        }

        if (result.data?.getTransactionsMixExpenseWithGroup != null &&
            result.data!.getTransactionsMixExpenseWithGroup.isNotEmpty) {
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

  onSettleTransaction(GSplitTransactionFields transactionFields) {
    expenses.add(
      Split(split: transactionFields),
    );
    fetchData(forceFirst: true);
    generateGrouped();
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

  (TextSpan, Color?) getTitle(BuildContext context, GSplitFields? split) {
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
    var group = context.select<AppState, GGroupFields>((value) => value
        .userGroups
        .firstWhere((element) => element.id == widget.group.id));

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
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GroupMembersPage(
                            initialGroup: group,
                            onSettleTransaction: onSettleTransaction,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.settings),
                  )
                ],
                title: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      GroupIconWidget(group: group),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(group.getDisplayName(context.read())),
                    ],
                  ),
                ),
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

                            var creator =
                                context.read<AppState>().getUser(mix.creatorId);
                            bool isInvoled = (mix is Split) ||
                                (mix is Expense && mix.splits.isNotEmpty);

                            return FractionallySizedBox(
                              widthFactor: 0.7,
                              alignment: isSelf
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Align(
                                alignment: isSelf
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: IntrinsicWidth(
                                  child: Stack(
                                    fit: StackFit.passthrough,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: InkWell(
                                          onTap: () {
                                            if (mix
                                                case Expense(
                                                  expense: var expense
                                                )) {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ExpensePage(
                                                    expenseFields: expense,
                                                    expenseWith:
                                                        ExpenseWithGroup(
                                                            group: group),
                                                  ),
                                                ),
                                              );
                                            } else if (mix
                                                case Split(split: var split)) {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      TransactionPage(
                                                    transaction: split,
                                                  ),
                                                ),
                                              );
                                            }
                                          },
                                          child: ChatBubble(
                                            clipper: ChatBubbleClipper1(
                                              type: isSelf
                                                  ? BubbleType.sendBubble
                                                  : BubbleType.receiverBubble,
                                            ),
                                            backGroundColor: isSelf
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .secondaryContainer
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .tertiaryContainer,
                                            padding: EdgeInsets.only(
                                              left: isSelf ? 0 : 20,
                                              right: !isSelf ? 0 : 15,
                                            ),
                                            elevation: 0,
                                            child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  if (creator != null &&
                                                      !isSelf) ...[
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          height: 20,
                                                          width: 20,
                                                          child: FittedBox(
                                                            child:
                                                                UserIconWidget(
                                                              user: creator,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          creator.displayName,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelMedium,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                  switch (mix) {
                                                    Expense(
                                                      expense: var expense,
                                                      splits: var splits
                                                    ) =>
                                                      Column(
                                                        children: [
                                                          ...[
                                                            ExpenseCard(
                                                                expense:
                                                                    expense),
                                                            const SizedBox(
                                                              height: 5,
                                                              width: 5,
                                                              child:
                                                                  DottedLine(),
                                                            ),
                                                            if (mix.splits
                                                                .isNotEmpty) ...[
                                                              ...splits.map(
                                                                (split) =>
                                                                    TransactionCard(
                                                                  title: getTitle(
                                                                          context,
                                                                          split)
                                                                      .$1,
                                                                  amountColor: getTitle(
                                                                          context,
                                                                          split)
                                                                      .$2,
                                                                  amount: split
                                                                      .amount,
                                                                  elevation: 0,
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          20),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 5,
                                                              )
                                                            ] else if (expense
                                                                    .creatorId ==
                                                                context
                                                                    .read<
                                                                        AppState>()
                                                                    .user!
                                                                    .id)
                                                              const TransactionCard(
                                                                  title: TextSpan(
                                                                      text:
                                                                          'Settled with everyone'))
                                                            else
                                                              const TransactionCard(
                                                                  title: TextSpan(
                                                                      text:
                                                                          'Not Involved')),
                                                          ]
                                                        ],
                                                      ),
                                                    Split(split: var splits) =>
                                                      TransactionCard(
                                                        title: getTitle(
                                                                context, splits)
                                                            .$1,
                                                        amountColor: getTitle(
                                                                context, splits)
                                                            .$2,
                                                        amount: splits.amount,
                                                        elevation: 0,
                                                      ),
                                                    CurrencyConversion(
                                                      splits: var splits
                                                    ) =>
                                                      CurrencyConversionCard(
                                                        splits: splits,
                                                        splitTitle: splits
                                                                    .length >
                                                                1
                                                            ? getTitle(context,
                                                                    splits[1])
                                                                .$1
                                                            : null,
                                                      )
                                                  }
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 5,
                                        right: 20,
                                        child: Text(
                                          DateFormat("h:mm a").format(
                                            DateTime.parse(mix.createdAt)
                                                .toLocal(),
                                          ),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          childCount: expenseGrouped[entry]!.length,
                        ),
                      ),
                    ],
                  ),
                )
              ],
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ExpandableCarousel(
                    options: CarouselOptions(
                      slideIndicator: CircularSlideIndicator(
                        padding: EdgeInsets.zero,
                        currentIndicatorColor: switch (
                            Theme.of(context).brightness) {
                          Brightness.dark => null,
                          Brightness.light =>
                            Theme.of(context).colorScheme.primary,
                        },
                        indicatorBackgroundColor: switch (
                            Theme.of(context).brightness) {
                          Brightness.dark => null,
                          Brightness.light =>
                            Theme.of(context).colorScheme.primaryContainer,
                        },
                      ),
                    ),
                    items: [
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => GroupMembersPage(
                              initialGroup: group,
                              onSettleTransaction: onSettleTransaction,
                            ),
                          ),
                        ),
                        child: GroupSummaryWidget(
                            scheme: scheme,
                            group: group,
                            neutralBlue: neutralBlue),
                      ),
                      SpendAnalysis(
                        groupId: group.id,
                        type: SpendAnalysisType.pieGraph,
                      ),
                      SpendAnalysis(
                        groupId: group.id,
                        type: SpendAnalysisType.table,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
      bottomNavigationBar: ButtonBar(
        children: [
          ElevatedButton.icon(
            icon: const Icon(Icons.sell),
            onPressed: () async {
              var expense = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CreateExpense(
                    searchGroup: true,
                    expenseWith: ExpenseWithGroup(group: group),
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

class CurrencyConversionCard extends StatelessWidget {
  const CurrencyConversionCard({
    super.key,
    required this.splits,
    this.splitTitle,
  });

  final List<GSplitFields> splits;
  final TextSpan? splitTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  splits.first.amount.getPretty(context),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: ColorUtils.getNeutralYellow(context).primary,
                      ),
                ),
                const Icon(Icons.chevron_right),
                if (splits.length > 1)
                  Text(
                    splits[1].amount.getPretty(context),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: ColorUtils.getNeutralYellow(context).primary,
                        ),
                  ),
              ],
            ),
          ),
        ),
        if (splits.length > 1)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...[
                  Text.rich(
                    splitTitle!,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ]
              ],
            ),
          ),
      ],
    );
  }
}

class GroupSummaryWidget extends StatelessWidget {
  const GroupSummaryWidget({
    super.key,
    required this.scheme,
    required this.group,
    required this.neutralBlue,
  });

  final ColorScheme scheme;
  final GGroupFields group;
  final ColorScheme neutralBlue;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              'Group Summary',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Row(
              children: [
                if (group.toReceive.isNotEmpty)
                  Expanded(
                      child: AutoScroll(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ...group.toReceive.map(
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
                const SizedBox(
                  width: 5,
                ),
                if (group.toPay.isNotEmpty)
                  Expanded(
                    child: AutoScroll(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ...group.toPay.map(
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
                              ),
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
            if (group.members
                .where((p0) =>
                    p0.member.id != context.read<AppState>().user!.id &&
                    !p0.owedInGroup.every((p0) => p0.amount == 0))
                .isEmpty)
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'you are settled up',
                      style: TextStyle(
                        color: neutralBlue.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ...group.members
                .where((p0) =>
                    p0.member.id != context.read<AppState>().user!.id &&
                    !p0.owedInGroup.every((p0) => p0.amount == 0))
                .map<Widget>(
                  (member) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: FittedBox(
                          child: UserIconWidget(user: member.member),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        member.member.shortName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      if (member.owedInGroup.every((p0) => p0.amount == 0))
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
                      else
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...member.owedInGroup.map(
                              (owe) => (owe.amount < 0)
                                  ? Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'owes you ',
                                            style: TextStyle(
                                              color: scheme.primary,
                                            ),
                                          ),
                                          TextSpan(
                                            text: owe.getPrettyAbs(context),
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                    color: scheme.primary,
                                                    fontWeight:
                                                        FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    )
                                  : (owe.amount > 0)
                                      ? Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'you owe ',
                                                style: TextStyle(
                                                  color: scheme.error,
                                                ),
                                              ),
                                              TextSpan(
                                                text: owe.getPretty(context),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                        color: scheme.error,
                                                        fontWeight:
                                                            FontWeight.w800),
                                              ),
                                            ],
                                          ),
                                        )
                                      : const SizedBox(),
                            )
                          ],
                        ),
                    ],
                  ),
                )
                .intersperse(
                  const SizedBox(
                    height: 10,
                  ),
                ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Full summary'),
                Icon(Icons.chevron_right),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DateHeader extends SliverPersistentHeaderDelegate {
  final String date;

  DateHeader(this.date);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: Chip(
          label: Text(date),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class MaintiningScrollPhysics extends ScrollPhysics {
  const MaintiningScrollPhysics({super.parent, required this.maintain});

  final ValueNotifier<bool> maintain;
  // double lastExtent = 0;

  @override
  MaintiningScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return MaintiningScrollPhysics(
        parent: buildParent(ancestor), maintain: maintain);
  }

  @override
  double adjustPositionForNewDimensions({
    required ScrollMetrics oldPosition,
    required ScrollMetrics newPosition,
    required bool isScrolling,
    required double velocity,
  }) {
    if (maintain.value) {
      Future.delayed(Durations.short1).then((value) => maintain.value = false);

      var mine = newPosition.maxScrollExtent -
          (oldPosition.maxScrollExtent - oldPosition.pixels);
      return mine;
    } else {
      return super.adjustPositionForNewDimensions(
          oldPosition: oldPosition,
          newPosition: newPosition,
          isScrolling: isScrolling,
          velocity: velocity);
    }
  }
}
