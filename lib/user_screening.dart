import 'dart:html';

import 'package:flutter/material.dart';

class UserScreeningPage extends StatefulWidget {
  const UserScreeningPage({ Key? key }) : super(key: key);

  @override
  State<UserScreeningPage> createState() => _UserScreeningPageState();
}

class _UserScreeningPageState extends State<UserScreeningPage> {
  @override
  Widget build(BuildContext context) {

    final ButtonStyle googlestyle = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));


    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonBar(
          buttonPadding: EdgeInsets.all(8),
          children: [

            workoutAgeOptions => ()

            ElevatedButton(onPressed: (){}, child: const Text("a btn"))
          ],
        )
         
      ],
    );
  }
}