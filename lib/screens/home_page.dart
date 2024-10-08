import 'dart:collection';

import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/gen/assets.gen.dart';
import 'package:billdivide/screens/transaction_history.dart';
import 'package:billdivide/screens/user_setting.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:billdivide/utils/demo_data.dart';
import 'package:billdivide/widgets/spend_analysis.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/user.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = ColorUtils.getMainScheme(context);
    var users = context.select<AppState, UnmodifiableListView<GUserPaysFields>>(
        (state) => state.interactedUsers);
    var isUsersLoading =
        context.select<AppState, bool>((value) => value.isUsersLoading);
    GUserPaysFields? selfUser;
    try {
      selfUser = users.firstWhere(
          (element) => element.id == context.read<AppState>().user?.id);
    } catch (e) {
      // no self user
    }
    var nonSelfUsrs = users.where(
      (element) => element.id != selfUser?.id,
    );

    return CustomScrollView(
      slivers: [
        SliverAppBar.medium(
          title: const Text(
            "Home",
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TransactionHistory(),
                  ),
                );
              },
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserSetting(),
                  ),
                );
              },
              icon: SizedBox(
                width: IconTheme.of(context).size,
                height: IconTheme.of(context).size,
                child: FittedBox(
                  child: UserIconWidget(user: context.read<AppState>().user!),
                ),
              ),
            )
          ],
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SpendAnalysis(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserPage(
                    initialUser: context.read<AppState>().user!,
                  ),
                ));
              },
              leading: UserIconWidget(user: context.read<AppState>().user!),
              title:
                  Text('${context.read<AppState>().user!.displayName} (You)'),
              subtitle: const Text('Record your personal expenses'),
            ),
          ),
        ),
        if (isUsersLoading) ...[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Friends',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Shimmer(
              gradient: switch (Theme.of(context).brightness) {
                Brightness.dark => kShimmerGradientDark,
                Brightness.light => kShimmerGradientLight,
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ListTile(
                  leading: const SizedBox(
                    width: 40,
                    height: 40,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  title: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: 0.4,
                    child: SizedBox(
                      height: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: 0.8,
                        child: SizedBox(
                          height: 10,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }, childCount: 3))
        ] else if (nonSelfUsrs.isNotEmpty) ...[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Friends',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            var user = nonSelfUsrs.elementAt(index);
            return HomeUserTile(user: user, scheme: scheme);
          }, childCount: nonSelfUsrs.length))
        ] else
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Assets.imagesWelcome.image(),
                ),
                Text(
                  "It's empty here!\nStart by creating an expense",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Spacer(),
              ],
            ),
          ),
      ],
    );
  }
}

class HomeUserTile extends StatelessWidget {
  const HomeUserTile({
    super.key,
    required this.user,
    required this.scheme,
  });

  final GUserPaysFields user;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UserPage(initialUser: user)));
        },
        leading: UserIconWidget(user: user),
        title: Text(user.displayName),
        subtitle: user.toPay.isEmpty && user.toReceive.isEmpty
            ? const Text('you are settled up')
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...user.toPay
                      .followedBy(user.toReceive)
                      .sorted(
                          (b, a) => a.amount.abs().compareTo(b.amount.abs()))
                      .map(
                        (e) => e.amount > 0
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
                                      text: e.getPrettyAbs(context),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color: scheme.error,
                                              fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              )
                            : Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'you are owed ',
                                      style: TextStyle(
                                        color: scheme.primary,
                                      ),
                                    ),
                                    TextSpan(
                                      text: e.getPrettyAbs(context),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color: scheme.primary,
                                              fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                      )
                ],
              ),
      ),
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
