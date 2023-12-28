import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';
import 'package:splitbuddy/state/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var users = context.select<AppState,
            UnmodifiableListView<Ginteracted_usersData_interactedUsers>>(
        (state) => state.interactedUsers);
    Ginteracted_usersData_interactedUsers? selfUser;
    try {
      selfUser = users.firstWhere(
          (element) => element.id == context.read<AppState>().user?.id);
    } catch (e) {
      // no self user
    }
    var nonSelfUsrs = users.where(
      (element) => element.id != context.read<AppState>().user?.id,
    );
    return CustomScrollView(
      slivers: [
        const SliverAppBar.medium(
          title: Text(
            "Home",
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text(
                    (selfUser?.toPay ?? 0).toString(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const Text(
                    "To pay",
                  )
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    (selfUser?.toReceive ?? 0).toString(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const Text(
                    "To receive",
                  )
                ],
              )),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          var user = nonSelfUsrs.elementAt(index);
          return Container(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Card(
              child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.account_circle),
                title: Text(user.name),
                subtitle: Row(
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
            ),
          );
        }, childCount: nonSelfUsrs.length)),
      ],
    );
  }
}
