import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart';
import 'package:billdivide/models/expensewith.dart';
import 'package:billdivide/screens/add_expense.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';
import 'package:collection/collection.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/extensions/user_extension.dart';

class PeopleFinder extends StatefulWidget {
  final Widget Function(BuildContext, SearchController) builder;
  final bool canMultiSelect;
  final bool findGroups;
  final bool hideSingleGroup;
  final bool showSelf;
  final ValueNotifier<ExpenseWith?>? people;
  final bool isEditable;
  final Future<bool> Function(ExpenseWith)? onDone;
  final String? Function(GUserFields user)? disableFilter;

  const PeopleFinder({
    super.key,
    required this.builder,
    required this.canMultiSelect,
    required this.findGroups,
    this.people,
    this.isEditable = true,
    this.onDone,
    this.disableFilter,
    this.hideSingleGroup = true,
    this.showSelf = false,
  });

  @override
  State<PeopleFinder> createState() => _PeopleFinderState();
}

class _PeopleFinderState extends State<PeopleFinder> {
  late ValueNotifier<ExpenseWith?> expenseWith;
  bool loading = false;

  @override
  void initState() {
    expenseWith = widget.people ?? ValueNotifier(null);
    super.initState();
  }

  String? canBeCompletedToGmail(String userInput) {
    const gmailSuffix = "@gmail.com";
    final gmailParts = gmailSuffix.split('');

    // Check for full completion:
    if (EmailValidator.validate(userInput + gmailSuffix)) {
      return userInput + gmailSuffix;
    }

    // Check for partial completions:
    for (int i = 1; i < gmailParts.length; i++) {
      final partialSuffix = gmailParts.sublist(i).join('');
      if (userInput.endsWith(partialSuffix) &&
          EmailValidator.validate(userInput + gmailSuffix.substring(0, i))) {
        return userInput + gmailSuffix.substring(0, i);
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      viewHintText: 'Enter name or email',
      builder: widget.builder,
      viewBuilder: (suggestions) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SearchBarChips(
                expenseWith: expenseWith,
                isOut: false,
                canDelete: widget.isEditable,
              ),
              Expanded(child: ListView(children: [...suggestions])),
            ],
          ),
          floatingActionButton: ValueListenableBuilder(
              valueListenable: expenseWith,
              builder: (context, val, child) {
                if (val != null && val.lengthOfUsers > 0) {
                  return FloatingActionButton(
                    onPressed: widget.onDone != null
                        ? () async {
                            try {
                              setState(() {
                                loading = true;
                              });
                              var nav = Navigator.of(context);
                              var pop =
                                  await widget.onDone!(expenseWith.value!);
                              if (pop) {
                                nav.pop();
                              }
                            } finally {
                              if (mounted) {
                                setState(() {
                                  loading = false;
                                });
                              }
                            }
                          }
                        : () {
                            Navigator.of(context).pop();
                          },
                    child: loading
                        ? SizedBox(
                            height: IconTheme.of(context).size,
                            width: IconTheme.of(context).size,
                            child: const CircularProgressIndicator(),
                          )
                        : const Icon(Icons.check),
                  );
                }
                return const SizedBox();
              }),
        );
      },
      suggestionsBuilder:
          (BuildContext context, SearchController controller) async {
        final AppState appState = context.read<AppState>();
        final GUserFields selfUser = appState.user!;
        GUserFields? searchUser;
        if (controller.text.isNotEmpty &&
            EmailValidator.validate(controller.text)) {
          final result = await (await appState.client).executeCached(
              GsearchUserByEmailReq((b) => b.vars..email = controller.text));
          searchUser = (await result.first).data?.findUserByEmail;
        }
        final groups = appState.userGroups;
        final List<Widget> groupsList = <Widget>[
          if (widget.findGroups)
            ...groups
                .where((element) => !element.isDirectPayment)
                .where((element) => element
                    .getDisplayName(context.read())
                    .toLowerCase()
                    .contains(controller.text.toLowerCase()))
                .map(
                  (element) => InkWell(
                    onTap: () {
                      expenseWith.value = ExpenseWithGroup(group: element);
                      controller.closeView(null);
                    },
                    child: Card(
                      child: ListTile(
                        leading: GroupIconWidget(group: element),
                        title: Text(element.getDisplayName(context.read())),
                      ),
                    ),
                  ),
                )
        ];
        final users = appState.interactedUsers;
        final currentUser = appState.user!;
        final List<Widget> usersList = <Widget>[
          ...users
              .where((element) =>
                  element.id != currentUser.id &&
                  element.displayName
                      .toLowerCase()
                      .contains(controller.text.toLowerCase()))
              .sorted((a, b) {
            if (widget.disableFilter?.call(b) != null) {
              return -1;
            }
            return a.displayName
                .toLowerCase()
                .compareTo(b.displayName.toLowerCase());
          }).map(
            (searchUser) {
              var disableReason = widget.disableFilter?.call(searchUser);
              return InkWell(
                onTap: disableReason == null
                    ? () {
                        if (expenseWith.value
                            case ExpenseWithPeople(users: var users)) {
                          if (!users.any((element) =>
                              (element is UserWithUser) &&
                              element.user.id == searchUser.id)) {
                            expenseWith.value = ExpenseWithPeople(users: [
                              ...users,
                              UserWithUser(user: searchUser),
                            ]);
                          } else {
                            expenseWith.value = ExpenseWithPeople(
                                users: users
                                    .where((element) =>
                                        element.id != searchUser.id)
                                    .toList());
                          }
                        } else {
                          expenseWith.value = ExpenseWithPeople(users: [
                            UserWithUser(user: searchUser),
                          ]);
                        }
                        controller.clear();
                      }
                    : null,
                child: Card(
                  child: ListTile(
                    leading: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        UserIconWidget(user: searchUser),
                        ValueListenableBuilder(
                            valueListenable: expenseWith,
                            builder: ((context, value, child) {
                              if (expenseWith.value
                                  case ExpenseWithPeople(users: var users)) {
                                if (users.any((element) =>
                                    (element is UserWithUser) &&
                                    element.user.id == searchUser.id)) {
                                  return Positioned(
                                    bottom: -5,
                                    right: -5,
                                    child: DecoratedBox(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.check_circle,
                                        color: ColorUtils.getMainScheme(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                              }
                              return const SizedBox();
                            }))
                      ],
                    ),
                    title: Text(searchUser.displayName),
                    subtitle:
                        disableReason != null ? Text(disableReason) : null,
                  ),
                ),
              );
            },
          )
        ];
        final List<Widget> searchOptions = <Widget>[
          if (EmailValidator.validate(controller.text) && searchUser == null)
            InkWell(
              onTap: () {
                if (expenseWith.value
                    case ExpenseWithPeople(users: var users)) {
                  if (!users.any((element) =>
                      (element is UserWithEmail) &&
                      element.email == controller.text)) {
                    expenseWith.value = ExpenseWithPeople(users: [
                      ...users,
                      UserWithEmail(email: controller.text)
                    ]);
                  }
                } else {
                  expenseWith.value = ExpenseWithPeople(
                      users: [UserWithEmail(email: controller.text)]);
                }
                controller.clear();
              },
              child: Card(
                child: ListTile(
                  leading: const Icon(Icons.person_add),
                  title: Text("Invite ${controller.text}"),
                ),
              ),
            )
          else if (searchUser != null)
            InkWell(
              onTap: () {
                if (expenseWith.value
                    case ExpenseWithPeople(users: var users)) {
                  if (!users.any((element) =>
                      (element is UserWithUser) &&
                      element.user.id == searchUser!.id)) {
                    expenseWith.value = ExpenseWithPeople(users: [
                      ...users,
                      UserWithUser(user: searchUser!),
                    ]);
                  }
                } else {
                  expenseWith.value = ExpenseWithPeople(users: [
                    UserWithUser(user: searchUser!),
                  ]);
                }
                controller.clear();
              },
              child: Card(
                child: ListTile(
                  leading: UserIconWidget(user: searchUser),
                  title: Text(searchUser.displayName),
                ),
              ),
            )
          else if (canBeCompletedToGmail(controller.text) != null &&
              searchUser == null)
            InkWell(
              onTap: () {
                if (expenseWith.value
                    case ExpenseWithPeople(users: var users)) {
                  if (!users.any((element) =>
                      (element is UserWithEmail) &&
                      element.email == controller.text)) {
                    expenseWith.value = ExpenseWithPeople(users: [
                      ...users,
                      UserWithEmail(
                          email: canBeCompletedToGmail(controller.text)!)
                    ]);
                  }
                } else {
                  expenseWith.value = ExpenseWithPeople(users: [
                    UserWithEmail(
                        email: canBeCompletedToGmail(controller.text)!)
                  ]);
                }
                controller.clear();
              },
              child: Card(
                child: ListTile(
                  leading: const Icon(Icons.person_add),
                  title:
                      Text("Invite ${canBeCompletedToGmail(controller.text)!}"),
                ),
              ),
            )
          else if (controller.text.isNotEmpty)
            const ListTile(
              leading: Icon(Icons.info),
              title: Text('Enter email address to invite user'),
            ),
          if (widget.showSelf &&
              selfUser.displayName
                  .toLowerCase()
                  .contains(controller.text.toLowerCase())) ...[
            const ListTile(
              dense: true,
              title: Text('Self'),
            ),
            InkWell(
              onTap: () {
                expenseWith.value = ExpenseWithSelf();

                controller.clear();
                controller.closeView(null);
              },
              child: Card(
                child: ListTile(
                  leading: UserIconWidget(user: selfUser),
                  title: Text(selfUser.displayName),
                  subtitle: const Text('Personal Expense'),
                ),
              ),
            )
          ],
          if (groupsList.isNotEmpty) ...[
            const ListTile(
              dense: true,
              title: Text('Groups'),
            ),
            ...groupsList
          ],
          if (usersList.isNotEmpty) ...[
            const ListTile(
              dense: true,
              title: Text('Friends'),
            ),
            ...usersList
          ],
        ];
        return searchOptions;
      },
    );
  }
}
