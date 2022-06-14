import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';

class PortalScreen extends StatefulWidget {
  PortalScreen({Key? key}) : super(key: key);
  @override
  State<PortalScreen> createState() => _PortalScreenState();
}

class _PortalScreenState extends State<PortalScreen> {
  var gridList = <GridBox>[];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 20; i++) {
      gridList.add(GridBox());
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        decoration: BoxDecoration(color: Color(getToken("surface"))),
        child: ClipOval(
          clipBehavior: Clip.antiAlias,
          clipper: MyClipper(
            offSetX: MediaQuery.of(context).size.width / 2,
            offSetY: MediaQuery.of(context).size.height / 2,
            radius: MediaQuery.of(context).size.width / 4,
          ),
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 5,
                    children: gridList,
                  ),
                  ),
                ),
              ),
            Center(
              child: Material(
                color: Color(getToken("primary")).withOpacity(.4),
                child: InkWell(
                  onTap: (){},



              ),
              ),
            ),
          ],
        ),
        ),
      );
    });
  }
}

class MyClipper extends CustomClipper<Rect> {
  final double offSetX, offSetY, radius;
  MyClipper(
      {required this.offSetX, required this.offSetY, required this.radius});
  @override
  getClip(Size size) {
    return Rect.fromCircle(center: Offset(offSetX, offSetY), radius: radius);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

//widget for masked layer
class GridBox extends StatefulWidget {
  final List colorOptions = <Color>[
    Color(getToken("surface")),
    Color(getToken("on-surface"))
  ];

  @override
  State<GridBox> createState() => _GridBoxState();
}

class _GridBoxState extends State<GridBox> {
  bool currentColor = true;
  var rnd = Random().nextInt(9) + 1;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: rnd), (Timer t) {
      setState(() {
        currentColor = !currentColor;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: currentColor
            ? Border.all(color: widget.colorOptions[1])
            : Border.all(color: widget.colorOptions[0]),
        color: currentColor ? widget.colorOptions[0] : widget.colorOptions[1],
      ),
    );
  }
}

///will tis paint in front of the boxes???
class RipplePainter extends CustomPainter {
  final double offSetX, offSetY, radius;
  final ripplePaint = Paint()..color = Colors.white;
  RipplePainter(
      {required this.offSetX, required this.offSetY, required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(offSetX, offSetY), radius, ripplePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

//
// String getDeviceSize(BuildContext context){
//   ///480, 600, 840, 960, 1280, 1440, and 1600dp.
//   final intSizes = <int>[480, 600, 840, 960, 1280, 1440, 1600];
//   final stringSizes = <String>["xsmall", "small-handset", "medium","large","xlarge"];
//   final mappedSizes = <Map<String, int>>[];
//   intSizes.map( (e) {
//     ///key : element value from the list
//     ///value(s) : Handset/ Tablet size category, Window Size Category, number of Columns, size of gutter in dp units
//     // mappedSizes.add(e.toString());
//   } );
//   String size;
//   ///iterate through list and return the index of the element that returns ture (the input's size is smaller than the element's value)
//   // return size;
// }
