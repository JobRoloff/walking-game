
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider with ChangeNotifier{

GoogleSignInAccount? _currentUser;
GoogleSignInAccount get getUser => _currentUser!;

  // ignore: prefer_final_fields
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email' 
    ],
  );
  Future <void> signInHandler() async{
    try{
      final user = await _googleSignIn.signIn();
      if (user == null) return;
      _currentUser = user;
      final userAuth = await user.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: userAuth.accessToken,
        idToken: userAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    }  
    catch (error){
      // ignore: avoid_print
      print(error.toString());
    }
      notifyListeners();
  }

  Future <void> silentSignInHandler() async{
    try{
      await _googleSignIn.signInSilently();
    }  
    catch (error){
      // ignore: avoid_print
      print(error);
    }
    notifyListeners();
  }

  Future <void> signOutHandler() async{
    await _googleSignIn.signOut();
    FirebaseAuth.instance.signOut();
    notifyListeners();
  } 
}