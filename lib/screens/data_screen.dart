
import 'package:flutter/material.dart';

import '../widgets/nav_link.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //main panel
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.purple,
            ),
          ),
          //side panel
          Expanded(
            flex: 1,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("nav link widgets that on tap routes to appropriate screen"),
                  NavLink(),
                  NavLink(),
                  NavLink(),
                ]),
          )
        ],
      ),
    );
  }
}
