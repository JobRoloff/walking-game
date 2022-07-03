import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_note/providers/sign_in_provider.dart';
import 'package:flutter_application_note/screens/first_screen.dart';
import 'package:flutter_application_note/providers/inventory_n_progress_provider.dart';
import 'package:flutter_application_note/screens/inventory_screen.dart';
import 'package:flutter_application_note/screens/portal_screen.dart';
import 'package:flutter_application_note/screens/user_settings_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'models/m3dark_color_scheme.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final bool loggedIn = await isloggedIn();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => InventoryNProgressProvider()),
    ], child: MyApp()),

  );
}

class MyApp extends StatefulWidget {
  // final String initRoute;
  //  MyApp({Key? key, required this.initRoute}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
  }

class _MyAppState  extends State<MyApp>{
  late StreamSubscription<User?> _firebaseSub;
  late StreamSubscription<User?> _googleAuthSub;
  GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();

    _firebaseSub = FirebaseAuth.instance.authStateChanges().listen((event) {
      _navigatorKey.currentState!.pushReplacementNamed(
        event == null ? 'pre' : 'login',
      );
    });
    // _googleAuthSub =
    //     .listen((event) {
    //   print("init state: $event");
    //   _navigatorKey.currentState!.pushReplacementNamed(
    //     event != null ? 'pre' : 'login',
    //   );
    //   print("init state: $event");
    // });
  }
  @override
  void dispose() {
    _firebaseSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      initialRoute: FirebaseAuth.instance.currentUser == null ? 'pre': 'inventory',
      onGenerateRoute: (reqSettings){
        //conditional to show screens based on auth status

        if(reqSettings.name == "pre"){
          return MaterialPageRoute(builder: (x) => PreLogInScreen());
        }
        else{
          return MaterialPageRoute(builder: (x)=> InventoryScreen());
        }
        },
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

