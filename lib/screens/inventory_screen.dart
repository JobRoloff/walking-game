import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';

import '../widgets/nav_link.dart';
import '../widgets/side_panel.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //main panel
          Expanded(
            flex: 4,
            child: Container(
              color: Color(getToken("surface")),
              child: const Center(child: Text("No Inventory yet..."),),
            ),
          ),
          //side panel
          const SidePanel(
            navLink1: NavLink(label: 'Portal', route: '/portal',),
            navLink2: NavLink(label: "Home", route: "/sci",),
          ),
        ],
      ),
    );
  }
}
