
import 'package:flutter/material.dart';
import '../providers/sign_in_provider.dart';

class SignOutButton extends StatefulWidget {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  State<SignOutButton> createState() => _SignOutButtonState();
}

class _SignOutButtonState extends State<SignOutButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ()=>signOut(),
        child: const Text("Sign Out")
    );
  }
}

