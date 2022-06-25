import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';

class NavLink extends StatefulWidget {
  final String label;
  final String route;
  const NavLink({required this.label, required this.route, Key? key})
      : super(key: key);

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          child: Container(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, widget.route);
                },
                child: Text(widget.label,
                    style: TextStyle(
                        color: Color(getToken("on-secondary-container"))))),
          ),
        ),
      ),
    );
    // );
  }
}
