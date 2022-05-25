

import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({ Key? key }) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text("Title"),
          // PopupMenuButton(itemBuilder: itemBuilder)
          Icon(Icons.menu)
        ],
      ),
    );
  }
}