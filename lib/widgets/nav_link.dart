import 'package:flutter/material.dart';
import 'package:flutter_application_note/models/token.dart';
class NavLink extends StatefulWidget {
  const NavLink({Key? key}) : super(key: key);

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  @override
  Widget build(BuildContext context) {
    return
      InkWell( child: Padding( padding: const EdgeInsets.all(8),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
            ),
          )
        ),

        // color:Color(getToken("md.sys.color.secondary-container.dark")),
        onPressed: () {  },
        child: Text("Nav Link",
            style: TextStyle(color: Color(getToken("on-secondary-container"))))
      ),
      ),

      );
    // );
  }
}
