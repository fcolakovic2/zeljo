import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class SignInWithGoogleInterface {
  //signInFunction(BuildContext context) async {}
  //SnackBar displaySnackBar({String content}) {}
  Future<User> signInWithGoogle({BuildContext context}) async {}
  //Future<void> signOut({BuildContext context}) async {}
  //Future<FirebaseApp> initializeFirebase({BuildContext context}) async {}
}