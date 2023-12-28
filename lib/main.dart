import 'package:dynamic_color/dynamic_color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/phone_entry.dart';
import 'package:splitbuddy/screens/home_screen.dart';
import 'package:splitbuddy/screens/signup_screen.dart';
import 'package:splitbuddy/state/app_state.dart';
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
  ThemeData _buildTheme(Brightness brightness, ColorScheme? colorScheme) {
    var baseTheme = ThemeData(
        brightness: brightness, colorScheme: colorScheme, useMaterial3: true);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.oxygenTextTheme(baseTheme.textTheme),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (light, dark) {
      return Selector<AppState, AuthStates>(
        builder: (context, val, child) {
          return DynamicColorBuilder(
            builder: (lightDynamic, darkDynamic) => MaterialApp(
              theme: _buildTheme(Brightness.light, lightDynamic),
              darkTheme: _buildTheme(Brightness.dark, darkDynamic),
              home: switch (val) {
                AuthStates.Loading => const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                AuthStates.UnAuthorized => const PhoneEntryScreen(),
                AuthStates.AuthorizedRequiresSignup => const SignupScreen(),
                AuthStates.Authorized => const HomeScreen(),
              },
            ),
          );
        },
        selector: (_, appstate) => appstate.authState,
      );
    });
  }
}
