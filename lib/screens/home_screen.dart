import 'package:billdivide/auth/secure_storage.dart';
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
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      askForNotification(context);
    });
    super.initState();
  }

  askForNotification(BuildContext context) async {
    var appstate = context.read<AppState>();

    if ((await SecureStorageHelper.getInstance().getNotificationPreference()) !=
        null) {
      return;
    }
    // ignore: use_build_context_synchronously
    final enableNotification = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Enable notification'),
        icon: const Icon(
          Icons.notifications_active,
          size: 40,
        ),
        content: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text:
                      'Would you like to enable notification to receive updates when you are away from app?'),
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Enable'),
          )
        ],
      ),
    );
    if (enableNotification == true) {
      SecureStorageHelper.getInstance().setNotificationPreference("true");
      appstate.setupAndSendFirebase();
    } else {
      SecureStorageHelper.getInstance().setNotificationPreference("false");
    }
  }

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
