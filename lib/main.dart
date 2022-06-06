
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_note/widgets/list_item.dart';
import 'package:flutter_application_note/widgets/nav_link.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

import 'styles/colorschemes.dart';
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
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const CharacterPage(),
      },
      theme: ThemeData(
        colorScheme: m3Dark,

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

            //main panel
            Expanded(
              flex: 2,
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    SizedBox(height: 100, width: 100,),
                    Expanded(
                        child: ItemList()
                    ),
                  ],
              ),
            ),

            //side panel
            Expanded(

              flex: 1,
              child: Column(

                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
