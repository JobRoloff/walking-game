
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_note/widgets/load_bar.dart';
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
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const TechScreen(),
      },
      theme: ThemeData(
        colorScheme: m3Dark,

        // textTheme: myTextTheme,
        // primarySwatch: Colors.blue,
      ),
    );
  }
}

class TechScreen extends StatefulWidget {
  const TechScreen({Key? key}) : super(key: key);

  @override
  State<TechScreen> createState() => _TechScreenState();
}

class _TechScreenState extends State<TechScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //main panel
            const Expanded(
              flex: 2,
              child: LoadBar()
              // child: Column(
              //     mainAxisSize: MainAxisSize.max,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.end,
              //     children: const [

              // ),
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
