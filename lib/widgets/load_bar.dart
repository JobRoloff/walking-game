import 'package:flutter/material.dart';

class LoadBar extends StatefulWidget {
  const LoadBar({Key? key}) : super(key: key);

  @override
  State<LoadBar> createState() => _LoadBarState();
}

class _LoadBarState extends State<LoadBar> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .1,
      heightFactor: .9,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFCCCCCC),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Units/Time'),
              // AnimatedPositioned(
              //   duration: Duration(seconds: 5),
              //   child: ,
              // ),
              // CustomPaint(
              //   painter: P1(),
              //   child: const Center(
              //     child: Text(
              //       'Once upon a time...',
              //       style: TextStyle(
              //         fontSize: 40.0,
              //         fontWeight: FontWeight.w900,
              //         color: Color(0xFFFFFFFF),
              //       ),
              //     ),
              //   ),
              // )
            ]),
      ),
    );
  }
}

// class P1 extends CustomPainter {  @override
//   void paint(Canvas canvas, Size size) {
//     canvas.drawPath(
//
//     );
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     throw UnimplementedError();
//   }
// }
