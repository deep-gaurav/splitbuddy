import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/phone_entry.dart';
import 'package:splitbuddy/screens/home_screen.dart';
import 'package:splitbuddy/screens/signup_screen.dart';
import 'package:splitbuddy/state/app_state.dart';
import 'package:splitbuddy/state/auth_state.dart';
import 'package:system_theme/system_theme.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeData appTheme = SystemTheme.isDarkMode
      ? ThemeData.dark(useMaterial3: true)
      : ThemeData.light(
          useMaterial3: true,
        );
  @override
  Widget build(BuildContext context) {
    var user = context.select<AuthState, String?>(
      (value) => value.user?.uid,
    );
    if (user == null) {
      return const MaterialApp(
        home: PhoneEntryScreen(),
      );
    } else {
      return FutureBuilder<String>(
        future: context.read<AuthState>().user!.getIdToken(),
        builder: (context, ass) {
          if (ass.data == null) {
            return MaterialApp(
              theme: appTheme,
              home: const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          } else {
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => AppState(),
                )
              ],
              child: Selector<AppState, String?>(
                  builder: (context, userId, child) {
                    if (userId == null) {
                      return MaterialApp(
                        theme: appTheme,
                        home: const SignupScreen(),
                      );
                    } else {
                      return MaterialApp(
                        theme: appTheme,
                        home: const HomeScreen(),
                      );
                    }
                  },
                  selector: (_, appstate) => appstate.user?.id),
            );
          }
        },
      );
    }
  }
}
