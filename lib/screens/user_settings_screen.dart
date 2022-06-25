import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';

import '../models/user.dart';

/**
 * UI for users to EDIT their profile
 *
 * Expanded box containing:
 *
 * Immutabel fields:
 * - Label -> Character type
 * - Label -> Number of Portals Discovered
 *
 * Mutable fields:
 * - Forum Field -> Character Name
 * - Switch -> light preference
 */

class UserSettingsScreen extends StatefulWidget {
  @override
  State<UserSettingsScreen> createState() => _UserSettingsScreenState();
}

class _UserSettingsScreenState extends State<UserSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 1000,
                        ),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.orange,),
                          child: Center(
                            child: Text("Your settings"),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                      ),
                    ),
                  ],
                ),
                Form(
                  //allows multiple children
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: "text form field 1",
                      )
                    ],
                  ),
                ),
              ]),
        );
      },
    ));
  }
}
