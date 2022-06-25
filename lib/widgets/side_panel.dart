
import 'package:flutter/material.dart';

import 'nav_link.dart';
class SidePanel extends StatefulWidget {
  final NavLink navLink1;
  final NavLink navLink2;
  const SidePanel({required this.navLink1, required this.navLink2, Key? key}) : super(key: key);

  @override
  State<SidePanel> createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NavLink(label: widget.navLink1.label, route: widget.navLink1.route),
                  NavLink(label: widget.navLink2.label, route: widget.navLink2.route),
                ],
              ),
            ),
          ),
          Expanded(flex: 1, child: Container())
        ],
      ),
    );

  }
}
