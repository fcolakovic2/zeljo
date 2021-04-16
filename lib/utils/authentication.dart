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

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
            Authentication.displaySnackBar(
              content: 'Account postoji sa drugim podacima',
            ),
          );
        } else if (e.code == 'invalid-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
            Authentication.displaySnackBar(
              content:
                  'Greska prilikom ucitavanja vasih podataka. Pokusajte ponovo',
            ),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          Authentication.displaySnackBar(
            content: 'Error prilikom sign in-a. Pokusajte ponovo',
          ),
        );
      }
    }

    return user;
  }

  static Future<void> signOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      await googleSignIn.signOut();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        Authentication.displaySnackBar(
          content: 'Error prilikom log outa. Pokusajte ponovo',
        ),
      );
    }
  }
}
