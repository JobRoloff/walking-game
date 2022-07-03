
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> signInWithGoogleWeb() async {
  GoogleAuthProvider googleProvider = GoogleAuthProvider();
  GoogleSignIn googleSignIn = GoogleSignIn();


  googleSignIn.signIn();
  return await FirebaseAuth.instance.signInWithPopup(googleProvider);

  // Or use signInWithRedirect
  // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
}

Future <bool> isloggedIn() async{
  bool b = false;
   await FirebaseAuth.instance
      .userChanges()
      .listen((User? user) {
    if (user == null) {
    } else {
      b = true;
    }
  });
  return b;
}

Future <void> signOut() async {

  GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
  GoogleSignIn googleSignIn = GoogleSignIn();
  print("running sign out fxn: " + googleSignIn.currentUser.toString());

  googleSignIn.signOut();
  await FirebaseAuth.instance.signOut();
}