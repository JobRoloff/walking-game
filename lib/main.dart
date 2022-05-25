import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_note/pages.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

import 'user_screening.dart';

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=> const WebPage('Home Page'),
        '/user_screening' :(context) => UserScreeningPage('User Screening Page'),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }

}
