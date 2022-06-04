
import 'dart:collection';


import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'characters.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

import 'providers/googlesignin.dart';

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> GoogleSignInProvider()),
      ],
      child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=> CharacterPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    return Column(
        children: [
          Text("Characters:", style: TextStyle(color: Color(0xFF9a4521)),),
          Text(getEnemySet.length.toString()),
        //   Row(
        //     children: enemySet.forEach((element) => return chil[
        //     ]
        //   )
        ]
    );
  }
}
