import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_note/screens/sci_screen.dart';

import '../providers/sci_buff_provider.dart';

class LoadBar extends StatefulWidget {
  LoadBar(){
    context.read<SciBuffProvider>().addToLoadBarList(this);
  }
  @override
  State<LoadBar> createState() => _LoadBarState();
}

class _LoadBarState extends State<LoadBar> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer) {
      animate();
    });
  }

  @override
  bool complete = false;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ConstrainedBox(
            // decoration: BoxDecoration(color: Colors.red),
            constraints: BoxConstraints(maxWidth: 100),
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    height: complete ? constraints.maxHeight : 75,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8),
                          child: Text('lbs/s'),
                        ),
                        //child: wave animation
                      ),
                    ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  void animate() {
    setState(() => complete = !complete);
  }
}
