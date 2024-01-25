import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/models/expensewith.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/screens/people_finder.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CreateGroupPage extends StatefulWidget {
  const CreateGroupPage({super.key});

  @override
  State<CreateGroupPage> createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> {
  final ValueNotifier<ExpenseWith?> newGroupMembers = ValueNotifier(null);
  TextEditingController controller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('Create Group'),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: formKey,
                child: TextFormField(
                  controller: controller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Name cant be empty";
                    } else {
                      return null;
                    }
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter,
                    FilteringTextInputFormatter.allow(RegExp(r'[\w ]')),
                    LengthLimitingTextInputFormatter(50),
                  ],
                  onFieldSubmitted: (val) {},
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    // filled: true,
                  ),
                ),
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 20)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Members',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: ValueListenableBuilder(
              valueListenable: newGroupMembers,
              builder: (context, members, child) {
                Iterable<ShareableUser> tempMembers = [
                  UserWithUser(user: context.read<AppState>().user!)
                ];
                if (members case ExpenseWithPeople(users: var users)) {
                  tempMembers = tempMembers.followedBy(users);
                }
                return SliverList.builder(
                  itemBuilder: (context, i) {
                    final bool isSelf = tempMembers.elementAt(i).id ==
                        context.read<AppState>().user!.id;
                    return ListTile(
                      leading: UserIconWidget(user: tempMembers.elementAt(i)),
                      title: Text(
                        '${tempMembers.elementAt(i).shortName} ${isSelf ? '(You)' : ''}',
                      ),
                      trailing: isSelf
                          ? null
                          : FilledButton.tonal(
                              onPressed: () {
                                newGroupMembers.value = ExpenseWithPeople(
                                    users: (newGroupMembers.value
                                            as ExpenseWithPeople)
                                        .users
                                        .where((element) =>
                                            element.id !=
                                            tempMembers.elementAt(i).id)
                                        .toList());
                              },
                              child: const Text('Remove'),
                            ),
                    );
                  },
                  itemCount: tempMembers.length,
                );
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: PeopleFinder(
                people: newGroupMembers,
                builder: (context, controller) => ListTile(
                  onTap: () {
                    controller.openView();
                  },
                  leading: const Icon(Icons.person_add_alt),
                  title: const Text('Add member'),
                ),
                canMultiSelect: true,
                findGroups: false,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: loading
            ? SizedBox(
                height: IconTheme.of(context).size,
                width: IconTheme.of(context).size,
                child: const CircularProgressIndicator(),
              )
            : const Icon(Icons.check),
        onPressed: loading
            ? null
            : () async {
                try {
                  setState(() {
                    loading = true;
                  });
                  if (formKey.currentState!.validate()) {
                    if ((newGroupMembers.value is ExpenseWithPeople &&
                        (newGroupMembers.value as ExpenseWithPeople)
                            .users
                            .isNotEmpty)) {
                      var appState = context.read<AppState>();
                      var nav = Navigator.of(context);

                      var group =
                          await appState.createGroup(controller.text.trim());
                      for (var member
                          in (newGroupMembers.value as ExpenseWithPeople)
                              .users) {
                        await appState.addMemberToGroup(
                            member.email!, group.id);
                      }
                      nav.pop(group);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Add member to make group')));
                    }
                  }
                } finally {
                  if (mounted) {
                    setState(() {
                      loading = false;
                    });
                  }
                }
              },
        label: const Text('Create'),
      ),
    );
  }
}
