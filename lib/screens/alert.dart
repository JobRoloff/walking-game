import 'package:flutter/material.dart';

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
