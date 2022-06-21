import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserSettingsForum extends StatefulWidget {
  const UserSettingsForum({Key? key}) : super(key: key);
  @override
  State<UserSettingsForum> createState() => _UserSettingsForumState();
}

class _UserSettingsForumState extends State<UserSettingsForum> {
  final GlobalKey keya = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return
      Form(

          key: keya,
          child: Column(children: [

    ],));
  }
}
