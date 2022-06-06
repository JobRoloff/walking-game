import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/Token.dart';
class NavLink extends StatefulWidget {
  const NavLink({Key? key}) : super(key: key);

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  @override
  Widget build(BuildContext context) {
    return
      InkWell( child: TextButton(
        // color:Color(getToken("md.sys.color.secondary-container.dark")),
        onPressed: () {  },
        child: Text("Nav Link",
            style: TextStyle(color: Color(getToken("md.sys.color.on-secondary-container.dark"))))
      ),

      );
    // );
  }
}
