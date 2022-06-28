
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignInProvider with ChangeNotifier {

  bool isSignedIn = false;

  void changeSignInStatus() {
    isSignedIn == !isSignedIn;
    notifyListeners();
  }

  Future<UserCredential> signInWithGoogleMobile() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    var x = await FirebaseAuth.instance.signInWithCredential(credential);
    changeSignInStatus();
    return x;
  }

  Future signInWithGoogleWeb() async {
      // Create a new provider
      GoogleAuthProvider googleProvider = GoogleAuthProvider();

      googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
      googleProvider.setCustomParameters({
        'login_hint': 'user@example.com'
      });
      return await FirebaseAuth.instance.signInWithPopup(googleProvider);
      // changeSignInStatus();
      // Once signed in, return the UserCredential

      // Or use signInWithRedirect
      // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
    }
  Future<void> signInWithGoogle() async{
    try{
      GoogleSignIn flow = GoogleSignIn();
      await flow.signIn();
    }catch(error){
      print(error.toString());
    }

  }

}
/**
 * create firebase auth object
 * create a current user
 * pass the current user into the firebase auth object
 * return the login status
 */