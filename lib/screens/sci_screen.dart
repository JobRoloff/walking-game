import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_note/models/token.dart';
import 'package:flutter_application_note/widgets/nav_link.dart';
import 'package:flutter_application_note/widgets/side_panel.dart';

class SciScreen extends StatefulWidget {
  const SciScreen({Key? key}) : super(key: key);

  @override
  State<SciScreen> createState() => _SciScreenState();
}

class _SciScreenState extends State<SciScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //main panel
          Expanded(
            flex: 4,
            child: ScenarioAlertDialog(),
          ),
          //   ),
          // ),
          //side panel
          const SidePanel(
            navLink1: NavLink(
              label: 'Portal',
              route: '/portal',
            ),
            navLink2: NavLink(
              label: "Inventory",
              route: "/inventory",
            ),
          ),
        ],
      ),
    );
  }
}

class ScenarioAlertDialog extends StatelessWidget {
  //access the users data
  const ScenarioAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("title"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text("1"),
            Text("2"),
            Text("3"),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(onPressed: () {}, child: Text("b1")),
        TextButton(onPressed: () {}, child: Text("b2")),
      ],
    );
  }
}
/**
 * final String title;
    final String outcomeCategory;
    final String messageBody;
    final String outcomeMessageBody;
    final String cTA1;
    final String cTA2;
 */
