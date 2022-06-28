
import 'package:flutter/material.dart';

import 'nav_link.dart';
class SidePanel extends StatefulWidget {

  const SidePanel({Key? key}) : super(key: key);

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
                  NavLink(label: "Portal", route: "/portal"),
                  NavLink(label: "Inventory", route: "/inventory"),
                  NavLink(label: "Settings", route: "/user_settings"),
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
