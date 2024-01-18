import 'package:billdivide/models/expensewith.dart';
import 'package:billdivide/screens/create_group_page.dart';
import 'package:billdivide/screens/people_finder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/screens/add_expense.dart';
import 'package:billdivide/screens/groups_page.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/state/app_state.dart';

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
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) => SlideTransition(
          position: Tween(
                  begin: Offset((child is HomePage) ? -1 : 1, 0),
                  end: const Offset(0, 0))
              .animate(animation),
          child: child,
        ),
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
          ? FloatingActionButton.extended(
              icon: const Icon(Icons.group_add),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateGroupPage(),
                  ),
                );
              },
              label: const Text('Create Group'),
            )
          : FloatingActionButton.extended(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: () async {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const CreateExpense(searchGroup: true)));
              },
              label: const Text('Create Expense'),
            ),
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
    if (formKey.currentState?.validate() == true) {
      Navigator.of(context).pop(name);
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
