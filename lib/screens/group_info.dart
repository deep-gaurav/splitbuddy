import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/extensions/group_extension.dart';
import 'package:billdivide/extensions/user_extension.dart';
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/screens/payment_recorder.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/utils/color_utils.dart';

class GroupMembersPage extends StatefulWidget {
  final GGroupFields initialGroup;
  final Function(GSplitTransactionFields settleTransaction) onSettleTransaction;

  const GroupMembersPage({
    super.key,
    required this.initialGroup,
    required this.onSettleTransaction,
  });

  @override
  State<GroupMembersPage> createState() => _GroupMembersPageState();
}

class _GroupMembersPageState extends State<GroupMembersPage> {
  @override
  void initState() {
    super.initState();
  }

  ColorScheme get mainScheme => ColorUtils.getMainScheme(context);
  ColorScheme get neutralYellow => ColorUtils.getNeutralYellow(context);
  ColorScheme get neutralBlue => ColorUtils.getNeutralBlue(context);

  @override
  Widget build(BuildContext context) {
    var group = context.select<AppState, GGroupFields>((state) => state
        .userGroups
        .firstWhere((element) => element.id == widget.initialGroup.id));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Row(
              children: [
                GroupIconWidget(group: group),
                const SizedBox(
                  width: 10,
                ),
                Text(group.getDisplayName(context.read())),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                var member = group.members[index];
                bool isSelf =
                    context.read<AppState>().user!.id == member.member.id;
                return Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Card(
                    child: ListTile(
                      leading: UserIconWidget(user: member.member),
                      title: Text(
                        '${member.member.displayName}${context.read<AppState>().user!.id == member.member.id ? ' (You)' : ''}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: !isSelf
                          ? Text.rich(
                              TextSpan(
                                text: member.owedInGroup > 0
                                    ? 'You owe them '
                                    : member.owedInGroup < 0
                                        ? 'They owe you '
                                        : 'You are settled',
                                children: [
                                  if (member.owedInGroup > 0)
                                    TextSpan(
                                      text: member.owedInGroup.toString(),
                                      style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.fontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  else if (member.owedInGroup < 0)
                                    TextSpan(
                                      text: (-member.owedInGroup).toString(),
                                      style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.fontSize,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                ],
                              ),
                              style: member.owedInGroup > 0
                                  ? TextStyle(color: mainScheme.error)
                                  : member.owedInGroup < 0
                                      ? TextStyle(color: mainScheme.primary)
                                      : TextStyle(color: neutralBlue.primary),
                            )
                          : null,
                      trailing: !isSelf
                          ? FilledButton.tonal(
                              onPressed: () async {
                                var result = await Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PaymentRecorder(
                                      withUser: context
                                          .read<AppState>()
                                          .interactedUsers
                                          .firstWhere(
                                            (element) =>
                                                element.id == member.member.id,
                                          ),
                                      inGroup: widget.initialGroup,
                                    ),
                                  ),
                                );
                                if (result is GSplitTransactionFields) {
                                  widget.onSettleTransaction(result);
                                }
                              },
                              child: const Text('Settle'))
                          : null,
                    ),
                  ),
                );
              },
              childCount: group.members.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Card(
                child: ListTile(
                  onTap: () async {
                    var appState = context.read<AppState>();
                    var messenger = ScaffoldMessenger.of(context);
                    var email = await showDialog(
                      context: context,
                      builder: (context) => NewMemberEmailDialog(
                          groupName: group.getDisplayName(context.read())),
                    );
                    if (email is String) {
                      try {
                        var res =
                            await appState.addMemberToGroup(email, group.id);
                        setState(() {
                          group = res;
                        });

                        messenger.showSnackBar(
                          const SnackBar(
                            content: Text("member added successfully"),
                          ),
                        );
                      } catch (e) {
                        messenger.showSnackBar(
                          const SnackBar(
                            content: Text("Cant add member"),
                          ),
                        );
                      }
                    }
                  },
                  leading: const Icon(Icons.person_add),
                  title: const Text("Add new member"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewMemberEmailDialog extends StatefulWidget {
  final String groupName;
  const NewMemberEmailDialog({
    super.key,
    required this.groupName,
  });

  @override
  State<NewMemberEmailDialog> createState() => _NewMemberEmailDialogState();
}

class _NewMemberEmailDialogState extends State<NewMemberEmailDialog> {
  var controller = TextEditingController();
  var formKey = GlobalKey<FormState>();

  onSubmit(String email) {
    if (formKey.currentState?.validate() == true) {
      Navigator.of(context).pop(email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Add member to ${widget.groupName}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: controller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email cant be empty";
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: onSubmit,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: () => onSubmit(controller.text),
            icon: const Icon(Icons.done),
            label: const Text("Add"),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
