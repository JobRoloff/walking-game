import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';
import 'package:flutter_application_note/widgets/side_panel.dart';

import '../widgets/sign_out_btn.dart';


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
          child: Row(children: [
            Expanded(
              flex: 4,
              child:
            Column(
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
                            margin: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                            ),
                            child: Center(
                              child: Text("Your settings"),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Color(
                              getToken("on-surface"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SignOutButton(),
                ]),
            ),
            SidePanel()
          ],)

        );
      },
    ));
  }
}
