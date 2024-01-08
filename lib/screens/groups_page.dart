import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/interable_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/group.dart';
import 'package:billdivide/state/app_state.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<AppState>().getGroups(),
      child: CustomScrollView(
        slivers: [
          const SliverAppBar.medium(
            title: Text(
              "Groups",
            ),
          ),
          Selector<AppState, List<GGroupFields>>(
            selector: (context, state) => state.userGroups,
            builder: (context, groups, child) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    var group = groups[index];
                    return Container(
                      margin:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Group(group: group),
                            ),
                          );
                        },
                        leading: GroupIconWidget(group: group),
                        title: Text(group.getDisplayName(context.read())),
                        subtitle: Row(
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
                    );
                  },
                  childCount: groups.length,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class GroupIconWidget extends StatelessWidget {
  const GroupIconWidget({
    super.key,
    required this.group,
  });

  final GGroupFields group;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: group.name != null
          ? DecoratedBox(
              decoration: BoxDecoration(
                color: group.getBackgroudColor(Theme.of(context).brightness),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  group
                          .getDisplayName(context.read())
                          .trim()
                          .characters
                          .firstOrNull
                          ?.toUpperCase() ??
                      '?',
                  style: TextStyle(
                    fontSize: 20,
                    color: group.getMainColor(Theme.of(context).brightness),
                  ),
                ),
              ),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(group.name == null ? 50 : 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ...List.generate(
                                group.members.length ~/ 2, (index) => index)
                            .map<Widget>(
                              (index) => Expanded(
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: group
                                        .members[index].member.getMainColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      group.members[index].member.displayName
                                              .characters
                                              .toUpperCase()
                                              .firstOrNull ??
                                          '?',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: ThemeData
                                                    .estimateBrightnessForColor(
                                                        group
                                                            .members[index]
                                                            .member
                                                            .getMainColor) ==
                                                Brightness.light
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .intersperse(
                              const SizedBox(
                                height: 2,
                              ),
                            ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ...List.generate(
                              group.members.length -
                                  (group.members.length ~/ 2),
                              (index) => (group.members.length ~/ 2) + index)
                          .map<Widget>(
                            (index) => Expanded(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color:
                                      group.members[index].member.getMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    group.members[index].member.displayName
                                            .characters
                                            .toUpperCase()
                                            .firstOrNull ??
                                        '?',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          ThemeData.estimateBrightnessForColor(
                                                      group
                                                          .members[index]
                                                          .member
                                                          .getMainColor) ==
                                                  Brightness.light
                                              ? Colors.black
                                              : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .intersperse(const SizedBox(
                            height: 2,
                          )),
                    ],
                  ))
                ],
              ),
            ),
    );
  }
}
