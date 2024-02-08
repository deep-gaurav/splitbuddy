import 'package:billdivide/state/customization_provider.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/phone_entry.dart';
import 'package:billdivide/screens/home_screen.dart';
import 'package:billdivide/screens/signup_screen.dart';
import 'package:billdivide/state/app_state.dart';
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
        ),
        ChangeNotifierProvider(
          create: (context) => Customization(),
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
      brightness: brightness,
      colorScheme: colorScheme ??
          ColorScheme.fromSeed(
            seedColor: const Color(0xFF06BCC1),
            brightness: brightness,
          ),
      useMaterial3: true,
    );

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
            builder: (lightDynamic, darkDynamic) =>
                Selector<Customization, (ThemeMode, Color?)>(
              selector: (context, customization) =>
                  (customization.themeMode, customization.themeColor),
              builder: (context, customizations, child) => MaterialApp(
                themeMode: customizations.$1,
                debugShowCheckedModeBanner: false,
                title: 'BillDivide',
                theme: _buildTheme(
                  Brightness.light,
                  customizations.$2 != null
                      ? ColorScheme.fromSeed(
                          seedColor: customizations.$2!,
                          brightness: Brightness.light,
                        )
                      : lightDynamic,
                ),
                darkTheme: _buildTheme(
                  Brightness.dark,
                  customizations.$2 != null
                      ? ColorScheme.fromSeed(
                          seedColor: customizations.$2!,
                          brightness: Brightness.dark,
                        )
                      : darkDynamic,
                ),
                home: switch (val) {
                  AuthStates.loading => const Scaffold(
                      body: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  AuthStates.unAuthorized => const PhoneEntryScreen(),
                  AuthStates.authorizedRequiresSignup => const SignupScreen(),
                  AuthStates.authorized => const HomeScreen(),
                },
              ),
            ),
          );
        },
        selector: (_, appstate) => appstate.authState,
      );
    });
  }
}
