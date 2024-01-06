import 'package:collection/collection.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:splitbuddy/__generated__/schema.schema.gql.dart';
import 'package:splitbuddy/extensions/expense_mix.dart';
import 'package:splitbuddy/extensions/group_extension.dart';
import 'package:splitbuddy/extensions/group_obj.dart';
import 'package:splitbuddy/extensions/interable_extension.dart';
import 'package:splitbuddy/extensions/user_extension.dart';
import 'package:splitbuddy/graphql/__generated__/queries.ast.gql.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';
import 'package:splitbuddy/graphql/__generated__/queries.req.gql.dart';
import 'package:splitbuddy/screens/groups_page.dart';
import 'package:splitbuddy/screens/home_page.dart';
import 'package:splitbuddy/screens/user.dart';
import 'package:splitbuddy/state/app_state.dart';

class Group extends StatefulWidget {
  final GGroupFields group;
  const Group({super.key, required this.group});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> with SingleTickerProviderStateMixin {
  List<GroupTransactionObject> expenses = [];

  late AnimationController _sheetAnimationController;

  final ScrollController _scrollController = ScrollController();

  bool _loading = false;

  ColorScheme get scheme => ColorScheme.fromSeed(
          seedColor: Colors.green,
          error: Colors.red,
          brightness: Theme.of(context).brightness)
      .harmonized();
  ColorScheme get neutralYellow => ColorScheme.fromSeed(
          seedColor: Colors.yellow, brightness: Theme.of(context).brightness)
      .harmonized();
  ColorScheme get neutralBlue => ColorScheme.fromSeed(
          seedColor: Colors.blue, brightness: Theme.of(context).brightness)
      .harmonized();

  @override
  void initState() {
    _sheetAnimationController = BottomSheet.createAnimationController(this);
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
        GtransactionMixExpenseReq(
          (b) => b.vars
            ..groupId = widget.group.id
            ..limit = 10
            ..fromTime = expenses.lastOrNull?.createdAt,
        ),
      );
      if (result.data != null) {
        if (expenses.isEmpty) {
          var pos = _scrollController.position.maxScrollExtent -
              _scrollController.position.pixels;

          _scrollController
              .jumpTo(_scrollController.position.maxScrollExtent - pos);
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            _scrollController
                .jumpTo(_scrollController.position.maxScrollExtent - pos);
          });
        }
        for (var trans in result.data!.getTransactionsMixExpenseWithGroup) {
          var expense = expenses.firstWhereOrNull((element) =>
              element is Expense && (element.expense.id == trans.expense?.id));
          if (trans.expense != null && expense == null) {
            expense ??= Expense(expense: trans.expense!, splits: []);
            expenses.add(expense);
          }
          if (expense != null && trans.split != null) {
            (expense as Expense).splits.add(trans.split!);
          } else if (trans.split != null) {
            expenses.add(Split(split: trans.split!));
          }
        }

        setState(() {});
      }
    } finally {
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
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
                text: split.toUser.shortName,
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
          GTransactionType.CROSS_GROUP_SETTLEMENT) {
        var isTo = split.toUserId == context.read<AppState>().user!.id;
        return (
          TextSpan(children: [
            TextSpan(
                text: 'Paid ${isTo ? 'to' : 'from'}\n',
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

    Map<String, List<GroupTransactionObject>> expenseGrouped = {};

    for (var expense in expenses) {
      var date = DateFormat('d MMM y')
          .format(DateTime.parse(expense.createdAt).toLocal());
      if (expenseGrouped[date] == null) {
        expenseGrouped[date] = [expense];
      } else {
        expenseGrouped[date]?.add(expense);
      }
    }
    var dates = expenseGrouped.keys.toList();
    dates.sort((a, b) => DateFormat('d MMM y')
        .parse(a)
        .compareTo(DateFormat('d MMM y').parse(b)));
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.bottomCenter,
            child: CustomScrollView(
              shrinkWrap: true,
              physics: const MaintiningScrollPhysics(),
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  primary: true,
                  pinned: true,
                  actions: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => GroupMembersPage(
                              initialGroup: group,
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.people),
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
                        Text(group.displayName),
                      ],
                    ),
                  ),
                  // bottom: PreferredSize(
                  //   preferredSize: const Size.fromHeight(140),
                  //   child: SizedBox(
                  //     height: 140,
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 20, vertical: 20),
                  //       child: SingleChildScrollView(
                  //         physics: const NeverScrollableScrollPhysics(),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.stretch,
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           children: [
                  //             Row(
                  //               children: [
                  //                 Expanded(
                  //                   child: Row(
                  //                     children: [
                  //                       const Spacer(),
                  //                       const Icon(Icons.call_received),
                  //                       const SizedBox(
                  //                         width: 5,
                  //                       ),
                  //                       Text(
                  //                         '${group.toReceive} to Receive',
                  //                         style: Theme.of(context)
                  //                             .textTheme
                  //                             .titleMedium,
                  //                       ),
                  //                       const Spacer(),
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 Expanded(
                  //                   child: Row(
                  //                     children: [
                  //                       const Spacer(),
                  //                       const Icon(Icons.call_made),
                  //                       const SizedBox(
                  //                         width: 5,
                  //                       ),
                  //                       Text(
                  //                         '${group.toPay} to Pay',
                  //                         style: Theme.of(context)
                  //                             .textTheme
                  //                             .titleMedium,
                  //                       ),
                  //                       const Spacer(),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //             const SizedBox(
                  //               height: 10,
                  //             ),
                  //             ...group.members.map(
                  //               (member) => Row(
                  //                 children: [
                  //                   SizedBox(
                  //                     width: 30,
                  //                     child: FittedBox(
                  //                       child:
                  //                           UserIconWidget(user: member.member),
                  //                     ),
                  //                   ),
                  //                   const SizedBox(
                  //                     width: 10,
                  //                   ),
                  //                   Text(member.member.displayName),
                  //                 ],
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
                if (expenseGrouped.isEmpty)
                  const SliverFillRemaining()
                else
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: ChatBubble(
                                            clipper: ChatBubbleClipper1(
                                              type: isSelf
                                                  ? BubbleType.sendBubble
                                                  : BubbleType.receiverBubble,
                                            ),
                                            backGroundColor: Color.alphaBlend(
                                                Theme.of(context)
                                                    .colorScheme
                                                    .surfaceTint
                                                    .withOpacity(
                                                        isSelf ? 0.5 : 0.2),
                                                Theme.of(context).cardColor),
                                            padding: EdgeInsets.only(
                                              left: isSelf ? 0 : 20,
                                              right: !isSelf ? 0 : 15,
                                            ),
                                            elevation: isInvoled ? 3 : 0,
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
                                                  if (mix is Expense) ...[
                                                    ExpenseCard(
                                                        expense: mix.expense),
                                                    const SizedBox(
                                                      height: 5,
                                                      width: 5,
                                                      child: DottedLine(),
                                                    ),
                                                    if (mix
                                                        .splits.isNotEmpty) ...[
                                                      ...mix.splits.map(
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
                                                          amount: split.amount,
                                                          elevation: 0,
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      20),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      )
                                                    ] else
                                                      const TransactionCard(
                                                          title: TextSpan(
                                                              text:
                                                                  'Not Involved')),
                                                  ] else if (mix is Split)
                                                    TransactionCard(
                                                      title: getTitle(context,
                                                              mix.split)
                                                          .$1,
                                                      amountColor: getTitle(
                                                              context,
                                                              mix.split)
                                                          .$2,
                                                      amount: mix.split.amount,
                                                      elevation: 0,
                                                    ),
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
                  ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              'Group Summary',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Row(
                                  children: [
                                    const Spacer(),
                                    Icon(
                                      Icons.call_received,
                                      color: scheme.primary,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      group.toReceive.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: scheme.primary,
                                          ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'To Receive',
                                      style: TextStyle(color: scheme.primary),
                                    ),
                                    const Spacer(),
                                  ],
                                )),
                                Expanded(
                                  child: Row(
                                    children: [
                                      const Spacer(),
                                      Icon(
                                        Icons.call_made,
                                        color: scheme.error,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        group.toPay.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: scheme.error,
                                            ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'To Pay',
                                        style: TextStyle(
                                          color: scheme.error,
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(),
                            ...group.members
                                .where((p0) =>
                                    p0.member.id !=
                                    context.read<AppState>().user!.id)
                                .map<Widget>(
                                  (member) => Row(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                        width: 25,
                                        child: FittedBox(
                                          child: UserIconWidget(
                                              user: member.member),
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
                                      if (member.owedInGroup < 0)
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
                                                text: '${-member.owedInGroup}',
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
                                      else if (member.owedInGroup > 0)
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
                                                text: '${member.owedInGroup}',
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
                                              TextSpan(
                                                text: '${member.owedInGroup}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                        color:
                                                            neutralBlue.primary,
                                                        fontWeight:
                                                            FontWeight.w800),
                                              ),
                                            ],
                                          ),
                                        )
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
                                Text('View complete'),
                                Icon(Icons.chevron_right),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
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

class GroupMembersPage extends StatefulWidget {
  final GGroupFields initialGroup;
  const GroupMembersPage({
    super.key,
    required this.initialGroup,
  });

  @override
  State<GroupMembersPage> createState() => _GroupMembersPageState();
}

class _GroupMembersPageState extends State<GroupMembersPage> {
  late GGroupFields group;

  @override
  void initState() {
    group = widget.initialGroup;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(group.displayName),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                var member = group.members[index];
                return Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Card(
                    child: ListTile(
                      selected:
                          context.read<AppState>().user!.id == member.member.id,
                      leading: const Icon(Icons.person),
                      title: Text(member.member.displayName),
                    ),
                  ),
                );
              },
              childCount: group.members.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Card(
                child: ListTile(
                  onTap: () async {
                    var appState = context.read<AppState>();
                    var messenger = ScaffoldMessenger.of(context);
                    var email = await showDialog(
                      context: context,
                      builder: (context) =>
                          NewMemberEmailDialog(groupName: group.displayName),
                    );
                    if (email is String) {
                      try {
                        var res =
                            await appState.addMemberToGroup(email, group.id);
                        setState(() {
                          group = res;
                        });

                        messenger.showSnackBar(
                          const SnackBar(
                            content: Text("member added successfully"),
                          ),
                        );
                      } catch (e) {
                        messenger.showSnackBar(
                          const SnackBar(
                            content: Text("Cant add member"),
                          ),
                        );
                      }
                    }
                  },
                  leading: const Icon(Icons.person_add),
                  title: const Text("Add new member"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewMemberEmailDialog extends StatefulWidget {
  final String groupName;
  const NewMemberEmailDialog({
    super.key,
    required this.groupName,
  });

  @override
  State<NewMemberEmailDialog> createState() => _NewMemberEmailDialogState();
}

class _NewMemberEmailDialogState extends State<NewMemberEmailDialog> {
  var controller = TextEditingController();
  var formKey = GlobalKey<FormState>();

  onSubmit(String email) {
    if (formKey.currentState?.validate() == true) {
      Navigator.of(context).pop(email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Add member to ${widget.groupName}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: controller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email cant be empty";
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: onSubmit,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: () => onSubmit(controller.text),
            icon: const Icon(Icons.done),
            label: const Text("Add"),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class MaintiningScrollPhysics extends ScrollPhysics {
  const MaintiningScrollPhysics({super.parent});

  @override
  MaintiningScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return MaintiningScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  double adjustPositionForNewDimensions({
    required ScrollMetrics oldPosition,
    required ScrollMetrics newPosition,
    required bool isScrolling,
    required double velocity,
  }) {
    return newPosition.maxScrollExtent -
        (oldPosition.maxScrollExtent - oldPosition.pixels);
  }
}
