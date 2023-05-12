import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/screens/groups_page.dart';
import 'package:splitbuddy/screens/home_page.dart';
import 'package:splitbuddy/state/app_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 700),
        child: currentIndex == 0 ? const HomePage() : const GroupsPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Groups",
          ),
        ],
      ),
      floatingActionButton: currentIndex == 1
          ? FloatingActionButton(
              onPressed: () async {
                var appstate = context.read<AppState>();
                var groupName = await showDialog(
                    context: context,
                    builder: (context) => const GroupNameDialog());
                if (groupName is String) {
                  appstate.createGroup(groupName);
                }
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}

class GroupNameDialog extends StatefulWidget {
  const GroupNameDialog({
    super.key,
  });

  @override
  State<GroupNameDialog> createState() => _GroupNameDialogState();
}

class _GroupNameDialogState extends State<GroupNameDialog> {
  var controller = TextEditingController();
  var formKey = GlobalKey<FormState>();

  onSubmit(String name) {
    Navigator.of(context).pop(name);
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
            "Create Group",
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
                    return "Name cant be empty";
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: onSubmit,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
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
            label: const Text("Create"),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
