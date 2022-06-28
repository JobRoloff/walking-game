import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';
import 'package:flutter_application_note/widgets/side_panel.dart';

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
    for (int i = 0; i < 25; i++) {
      gridList.add(GridBox());
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(getToken("surface"))),
      child:
        ClipOval(
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
                    height: MediaQuery.of(context).size.width / 2,
                    width: MediaQuery.of(context).size.width / 2,
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
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
        ),

    );
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
  var myTimer;
  @override
  State<GridBox> createState() => _GridBoxState();
}

class _GridBoxState extends State<GridBox> {
  bool currentColor = true;
  var rnd = Random().nextInt(9) + 1;
  late Timer myTimer;
  @override
  void initState() {
    myTimer = Timer.periodic(Duration(seconds: rnd), (Timer timer) {
      setState(() {
        currentColor = !currentColor;
      });
    });
  }
  @override
  void dispose(){
    myTimer.cancel();
    super.dispose();
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

class PhysDev {
  static final deviceOptions = <PhysDev>[];

  final int breakPoint;
  String? portraitSize; //Handset/Tablet Portrait Size
  String? landscapeSize; //Handset/Tablet Landscape Size
  final String windowSize;
  final int numCols, gutterSize;

  PhysDev(
      {required this.breakPoint,
        this.portraitSize,
        this.landscapeSize,
        required this.windowSize,
        required this.numCols,
        required this.gutterSize}) {
    deviceOptions.add(this);
  }

  ///device size methods
  static bool useSingleColLayout(BuildContext context) {
    if (MediaQuery.of(context).size.shortestSide < 600) {
      return true;
    } else {
      return false;
    }

  }

  static void createDeviceOptions() {
    PhysDev(
        breakPoint: 0,
        portraitSize: "small-handset",
        windowSize: "xsmall",
        numCols: 4,
        gutterSize: 16);
    PhysDev(
        breakPoint: 360,
        portraitSize: "medium-handset",
        windowSize: "xsmall",
        numCols: 4,
        gutterSize: 16);
    PhysDev(
        breakPoint: 400,
        portraitSize: "large-handset",
        windowSize: "xsmall",
        numCols: 4,
        gutterSize: 16);
    PhysDev(
        breakPoint: 480,
        portraitSize: "large-handset",
        landscapeSize: "small-handset",
        windowSize: "xsmall",
        numCols: 4,
        gutterSize: 16);
    PhysDev(
        breakPoint: 600,
        portraitSize: "small-tablet",
        landscapeSize: "medium-handset",
        windowSize: "small",
        numCols: 8,
        gutterSize: 24); //*
    PhysDev(
        breakPoint: 720,
        portraitSize: "large-tablet",
        landscapeSize: "large-handset",
        windowSize: "small",
        numCols: 8,
        gutterSize: 24); //*
    PhysDev(
        breakPoint: 840,
        portraitSize: "large-tablet",
        landscapeSize: "large-handset",
        windowSize: "small",
        numCols: 12,
        gutterSize: 24); //*
    PhysDev(
        breakPoint: 960,
        landscapeSize: "small-tablet",
        windowSize: "small",
        numCols: 12,
        gutterSize: 24);
    PhysDev(
        breakPoint: 1024,
        landscapeSize: "large-tablet",
        windowSize: "medium",
        numCols: 12,
        gutterSize: 24);
    PhysDev(
        breakPoint: 1280,
        landscapeSize: "large-tablet",
        windowSize: "medium",
        numCols: 12,
        gutterSize: 24); //**
    PhysDev(
        breakPoint: 1440,
        windowSize: "large",
        numCols: 12,
        gutterSize: 24); //**
    PhysDev(
        breakPoint: 1600,
        windowSize: "large",
        numCols: 12,
        gutterSize: 24); //**
    PhysDev(
        breakPoint: 1920,
        windowSize: "xlarge",
        numCols: 12,
        gutterSize: 24); //**
//* 16dp when the smallest width of the device is <600
//
// ** Desktop breakpoints are 16dp below the listed values to accommodate variations in browser chrome.
  }
}
