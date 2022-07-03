import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';
import 'package:flutter_application_note/providers/sign_in_provider.dart';


class PreLogInScreen extends StatefulWidget {
  const PreLogInScreen({Key? key}) : super(key: key);

  @override
  State<PreLogInScreen> createState() => _PreLogInScreenState();
}

class _PreLogInScreenState extends State<PreLogInScreen> {
  double positionX = 200.0, positionY = 200.0;
  void _updateMouseCoords(PointerEvent p) {
    setState(() {
      positionX = p.position.dx;
      positionY = p.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _updateMouseCoords,
      onHover: _updateMouseCoords,
      child: Container(
        decoration: BoxDecoration(color: Color(getToken("surface"))),
        child: ClipOval(
          clipBehavior: Clip.antiAlias,
          clipper: fClipper(
            xCoord: positionX,
            yCoord: positionY,
            radius: MediaQuery.of(context).size.width / 5,
          ),
          child: Scaffold(
              body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: TextButton(
                      child: Text("login"),
                      onPressed: () {
                        signInWithGoogleWeb();
                      }
                    ),
                  ),
                ],
                title: Text("A Dark World"),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int) {
                    return Center(
                      child: Title(
                        color: Color(getToken("on-surface")),
                        child: Container(
                            height: 100,
                            width: 100,
                            child: Text("A Dark World")),
                      ),
                    );
                  },
                  childCount: 20,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class fClipper extends CustomClipper<Rect> {
  final double radius, xCoord, yCoord;
  fClipper({required this.radius, required this.xCoord, required this.yCoord});
  @override
  getClip(Size size) {
    return Rect.fromCircle(center: Offset(xCoord, yCoord), radius: radius);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
