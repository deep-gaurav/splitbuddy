import 'dart:collection';

import 'package:billdivide/extensions/amount_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/user.dart';
import 'package:billdivide/state/app_state.dart';

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
        // SliverToBoxAdapter(
        //   child: Row(
        //     children: [
        //       Expanded(
        //           child: Column(
        //         children: [
        //           Text(
        //             context.read<AppState>().toPay.toString(),
        //             style: Theme.of(context).textTheme.displayLarge,
        //           ),
        //           const Text(
        //             "To pay",
        //           )
        //         ],
        //       )),
        //       Expanded(
        //           child: Column(
        //         children: [
        //           Text(
        //             context
        //                 .read<AppState>()
        //                 .toReceive
        //                 .map((e) => e.getPretty(context.read()))
        //                 .toString(),
        //             style: Theme.of(context).textTheme.displayLarge,
        //           ),
        //           const Text(
        //             "To receive",
        //           )
        //         ],
        //       )),
        //     ],
        //   ),
        // ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          var user = nonSelfUsrs.elementAt(index);
          return Container(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UserPage(initialUser: user)));
              },
              leading: UserIconWidget(user: user),
              title: Text(user.displayName),
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
                  ),
                ],
              ),
            ),
          );
        }, childCount: nonSelfUsrs.length)),
      ],
    );
  }
}

class UserIconWidget extends StatelessWidget {
  const UserIconWidget({
    super.key,
    required this.user,
  });

  final GUserFields user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: user.getMainColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            user.displayName.characters.toUpperCase().firstOrNull ?? '?',
            style: TextStyle(
              fontSize: 20,
              color: ThemeData.estimateBrightnessForColor(user.getMainColor) ==
                      Brightness.light
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
