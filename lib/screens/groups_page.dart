import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/graphql_api.graphql.dart';
import 'package:splitbuddy/screens/group.dart';
import 'package:splitbuddy/state/app_state.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar.medium(
          title: const Text(
            "Groups",
          ),
        ),
        Selector<AppState, List<GroupFieldsMixin>>(
          selector: (context, state) => state.userGroups,
          builder: (context, groups, child) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var group = groups[index];
                  return Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Group(group: group),
                            ),
                          );
                        },
                        leading: const Icon(Icons.group),
                        title: Text(group.name),
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
                    ),
                  );
                },
                childCount: groups.length,
              ),
            );
          },
        )
      ],
    );
  }
}
