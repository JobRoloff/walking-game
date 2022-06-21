
import 'dart:ui';

import 'package:flutter_application_note/providers/sci_buff_provider.dart';
import 'package:flutter_application_note/screens/data_screen.dart';
import 'package:flutter_application_note/screens/portal_screen.dart';
import 'package:flutter_application_note/screens/sci_screen.dart';
import 'package:flutter_application_note/screens/user_settings_screen.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'styles/colorschemes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => SciBuffProvider()),

    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/user_settings',
      routes: {
        '/data': (context) => const DataScreen(),
        '/portal': (context)=> PortalScreen(),
        '/sci': (context) => const SciScreen(),
        '/user_settings': (context) => UserSettingsScreen(),
      },
      theme: ThemeData(
        colorScheme: m3Dark,
      ),
    );
  }
}

