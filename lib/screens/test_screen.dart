///use this
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {  },
        child: const InkWell(),
    );
  }
}

class JInkRipple extends InkRipple {
  JInkRipple(
      {required MaterialInkController controller,
      required RenderBox referenceBox,
      required Offset position,
      required Color color,
      required TextDirection textDirection})
      : super(
            controller: controller,
            referenceBox: referenceBox,
            position: position,
            color: color,
            textDirection: textDirection);
}
