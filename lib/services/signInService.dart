import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zeljoprojekat/interface/signInInterface.dart';
import 'package:zeljoprojekat/navigationBar.dart';
import 'package:zeljoprojekat/utils/style/style.dart';

class SignInService implements SignInInterface {
  @override
  signInFunction(BuildContext context) async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => MyStatefulWidget(),
      ),
    );
  }

  @override
  SnackBar displaySnackBar({String content}) {
    return SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        content,
        style: Styles.stilUsera,
      ),
    );
  }

  @override
  Future<User> signInWithGoogle({BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount googleSignInAccount = await googleSignIn
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
            displaySnackBar(
              content: 'Account postoji sa drugim podacima',
            ),
          );
        } else if (e.code == 'invalid-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
            displaySnackBar(
              content:
                  'Greska prilikom ucitavanja vasih podataka. Pokusajte ponovo',
            ),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          displaySnackBar(
            content: 'Error prilikom sign in-a. Pokusajte ponovo',
          ),
        );
      }
    }

    return user;
  }

  @override
  Future<void> signOut({BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      await googleSignIn.signOut();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        displaySnackBar(
          content: 'Error prilikom log outa. Pokusajte ponovo',
        ),
      );
    }
  }

  @override
  Future<FirebaseApp> initializeFirebase({BuildContext context}) async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    return firebaseApp; //mora se uvijek firebase inicijalizirati
  }
}
