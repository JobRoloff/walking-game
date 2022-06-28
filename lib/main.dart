import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_note/providers/sign_in_provider.dart';
import 'package:flutter_application_note/screens/first_screen.dart';
import 'firebase_options.dart';
import 'package:flutter_application_note/providers/inventory_n_progress_provider.dart';
import 'package:flutter_application_note/screens/inventory_screen.dart';
import 'package:flutter_application_note/screens/portal_screen.dart';
import 'package:flutter_application_note/screens/alert.dart';
import 'package:flutter_application_note/screens/user_settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'models/m3dark_color_scheme.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => InventoryNProgressProvider()),
      ChangeNotifierProvider(create: (context) => SignInProvider()),

    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/pre',
      routes: {
        '/pre': (context) => const PreLogInScreen(),
        '/inventory': (context) => const InventoryScreen(),
        '/portal': (context)=> PortalScreen(),
        '/user_settings': (context) => UserSettingsScreen(),
      },
      theme: ThemeData(
        colorScheme: m3Dark,
      ),
    );
  }
}

