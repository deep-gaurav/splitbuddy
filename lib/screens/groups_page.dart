import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/extensions/group_extension.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';
import 'package:splitbuddy/screens/group.dart';
import 'package:splitbuddy/state/app_state.dart';

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
                          title: Text(group.displayName),
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
      ),
    );
  }
}
