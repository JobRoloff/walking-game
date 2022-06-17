
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_note/providers/sci_buff_provider.dart';
import 'package:flutter_application_note/screens/data_screen.dart';
import 'package:flutter_application_note/screens/portal_screen.dart';
import 'package:flutter_application_note/screens/sci_screen.dart';
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
      ChangeNotifierProvider(create: (context) => SciBuffProvider()),
      ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/sci',
      routes: {
        '/data': (context) => const DataScreen(),
        '/portal': (context)=> PortalScreen(),
        '/sci': (context) => const SciScreen(),
      },
      theme: ThemeData(
        colorScheme: m3Dark,

        // textTheme: myTextTheme,
        // primarySwatch: Colors.blue,
      ),
    );
  }
}


//draw a circle

//draw an arc
//draw an arc from points on the circle
//make a method doing the above. with the input of circle size and arc length, arc height


