import 'package:billdivide/extensions/amount_extension.dart';
import 'package:billdivide/gen/assets.gen.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    ColorScheme scheme = ColorUtils.getMainScheme(context);
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
            selector: (context, state) => state.userGroups
                .where((element) => !element.isDirectPayment)
                .toList(),
            builder: (context, groups, child) {
              if (groups.isNotEmpty) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      var group = groups[index];
                      return GroupTitle(group: group, scheme: scheme);
                    },
                    childCount: groups.length,
                  ),
                );
              } else {
                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          children: [
                            Assets.images.assist.image(),
                            Positioned.fill(
                              child: LayoutBuilder(
                                builder: (context, constraints) => Align(
                                  alignment: const FractionalOffset(0.95, 0.2),
                                  child: Text(
                                    'No groups yet?',
                                    style: GoogleFonts.kalam().copyWith(
                                      fontSize: constraints.minHeight.isInfinite
                                          ? 1
                                          : constraints.minHeight / 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Quiet on the Groups front.\nAdd a group to liven things up!",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const Spacer(),
                    ],
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}

class GroupTitle extends StatelessWidget {
  const GroupTitle({
    super.key,
    required this.group,
    required this.scheme,
  });

  final GGroupFields group;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
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
        subtitle: group.toPay.isEmpty && group.toReceive.isEmpty
            ? const Text('you are settled up')
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...group.toPay
                      .followedBy(group.toReceive)
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

class GroupIconWidget extends StatelessWidget {
  const GroupIconWidget({
    super.key,
    required this.group,
  });

  final GGroupFields group;

  @override
  Widget build(BuildContext context) {
    var members = group.members
        .where((p0) => p0.member.id != context.read<AppState>().user!.id)
        .toList();
    if (group.name == null && members.length == 1) {
      return UserIconWidget(user: members.first.member);
    }
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
                        ...List.generate(members.length ~/ 2, (index) => index)
                            .map<Widget>(
                              (index) => Expanded(
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: members[index].member.getMainColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      members[index]
                                              .member
                                              .displayName
                                              .characters
                                              .toUpperCase()
                                              .firstOrNull ??
                                          '?',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: ThemeData
                                                    .estimateBrightnessForColor(
                                                        members[index]
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
                      ...List.generate(members.length - (members.length ~/ 2),
                              (index) => (members.length ~/ 2) + index)
                          .map<Widget>(
                            (index) => Expanded(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: members[index].member.getMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    members[index]
                                            .member
                                            .displayName
                                            .characters
                                            .toUpperCase()
                                            .firstOrNull ??
                                        '?',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          ThemeData.estimateBrightnessForColor(
                                                      members[index]
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
