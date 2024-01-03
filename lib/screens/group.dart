import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:splitbuddy/extensions/group_extension.dart';
import 'package:splitbuddy/extensions/user_extension.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';
import 'package:splitbuddy/graphql/__generated__/queries.req.gql.dart';
import 'package:splitbuddy/screens/groups_page.dart';
import 'package:splitbuddy/state/app_state.dart';

class Group extends StatefulWidget {
  final GGroupFields group;
  const Group({super.key, required this.group});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  List<GExpenseFields> expenses = [];

  final ScrollController _scrollController = ScrollController();

  bool _loading = false;

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
        GgroupReq(
          (b) => b.vars
            ..groupId = widget.group.id
            ..limit = 10
            ..skip = expenses.length,
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
        expenses.addAll(result.data!.group.expenses);

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

  @override
  Widget build(BuildContext context) {
    var group = context.select<AppState, GGroupFields>((value) => value
        .userGroups
        .firstWhere((element) => element.id == widget.group.id));

    Map<String, List<GExpenseFields>> expenseGrouped = {};

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
          AppBar(
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
                  icon: const Icon(Icons.people))
            ],
            title: Row(
              children: [
                GroupIconWidget(group: group),
                const SizedBox(
                  width: 10,
                ),
                Text(group.displayName),
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
                      Text(group.toReceive.toString())
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.call_made),
                      Text(group.toPay.toString())
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
                            var expense = expenseGrouped[entry]![
                                expenseGrouped[entry]!.length - 1 - index];
                            var isSelf = expense.creator.id ==
                                context.read<AppState>().user!.id;

                            return FractionallySizedBox(
                              widthFactor: 0.7,
                              alignment: isSelf
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Align(
                                alignment: isSelf
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: Card(
                                  elevation: 1.0,
                                  child: Container(
                                    // decoration: BoxDecoration(
                                    //   color:
                                    //       Theme.of(context).colorScheme.surfaceVariant,
                                    // ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: IntrinsicWidth(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "${expense.amount}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w800),
                                              ),
                                              const Spacer(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Text(
                                                      expense.title,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  ),
                                                  Text(
                                                    DateFormat("h:mm a").format(
                                                      DateTime.parse(
                                                              expense.createdAt)
                                                          .toLocal(),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
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
    return Center(
      child: Chip(
        label: Text(date),
      ),
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

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
