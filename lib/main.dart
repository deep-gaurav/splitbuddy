import 'package:dynamic_color/dynamic_color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthState(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppState(),
        )
      ],
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
  final ThemeData appTheme = ThemeData.dark(useMaterial3: true);
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (light, dark) {
      return Selector<AppState, (bool, String?)>(
          builder: (context, val, child) {
            var (loading, userId) = val;
            if (loading) {
              return DynamicColorBuilder(
                builder: (lightDynamic, darkDynamic) => MaterialApp(
                  theme:
                      ThemeData(colorScheme: lightDynamic, useMaterial3: true),
                  darkTheme: ThemeData(
                    colorScheme: darkDynamic,
                    useMaterial3: true,
                  ),
                  home: const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              );
            } else if (userId == null) {
              return MaterialApp(
                theme: ThemeData(colorScheme: light, useMaterial3: true),
                darkTheme: ThemeData(
                  colorScheme: dark,
                  useMaterial3: true,
                ),
                home: const SignupScreen(),
              );
            } else {
              return MaterialApp(
                theme: ThemeData(colorScheme: light, useMaterial3: true),
                darkTheme: ThemeData(
                  colorScheme: dark,
                  useMaterial3: true,
                ),
                home: const HomeScreen(),
              );
            }
          },
          selector: (_, appstate) => (appstate.isLoading, appstate.user?.id));
    });
  }
}
