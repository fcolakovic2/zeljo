import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  static SnackBar displaySnackBar({required String content}) {
    return SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        content,
        style: TextStyle(color: Colors.grey, letterSpacing: 0.2),
      ),
    );
  }

  static Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    return firebaseApp; //mora se uvijek firebase inicijalizirati
  }

  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount = await googleSignIn
        .signIn(); //? non nullable, promijenjen pubspec yaml radi toga tj njegov minimum sdk.
    //uzmem instancu googlesignina i uradim signin koji vrati googlesigninaccount isto not nullable

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount
              .authentication; //ako je sign in odradjen, odradi authentication

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication
            .idToken, //uzmem credential od authentikacije, poslije pomocu njega provjeravam
      ); //sta je greska i ima li je u signinu

    }

    return user;
  }
}
