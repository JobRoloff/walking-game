import 'dart:collection';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_note/models/Token.dart';
import 'package:flutter_application_note/widgets/listItem.dart';
import 'package:flutter_application_note/widgets/navlink.dart';
import 'package:provider/provider.dart';
import 'characters.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

import 'colorschemes.dart';
import 'providers/googlesignin.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => CharacterPage(),
      },
      theme: ThemeData(
        colorScheme: x,

        // textTheme: myTextTheme,
        // primarySwatch: Colors.blue,
      ),
    );
  }
}

class CharacterPage extends StatefulWidget {
  const CharacterPage({Key? key}) : super(key: key);

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(height: 100, width: 100,),
                    Expanded(
                        child: ItemList()
                    ),
                    Text("Steps Remaining : "),
                  ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("nav link widgets that on tap routes to appropriate screen"),
                    NavLink(),
                    NavLink(),
                    NavLink(),
                  ]),
            )
        ],
    ),
    );
}}
