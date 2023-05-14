import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/graphql_api.graphql.dart';
import 'package:splitbuddy/state/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var users = context
        .select<AppState, UnmodifiableListView<InteractedUsers$Query$User>>(
            (state) => state.interactedUsers);
    InteractedUsers$Query$User? selfUser;
    try {
      selfUser = users.firstWhere(
          (element) => element.id == context.read<AppState>().user?.id);
    } catch (e) {
      // no self user
    }
    return CustomScrollView(
      slivers: [
        SliverAppBar.medium(
          title: const Text(
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
        )
      ],
    );
  }
}
