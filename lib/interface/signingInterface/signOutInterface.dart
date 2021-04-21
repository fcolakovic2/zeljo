import 'package:flutter/material.dart';

abstract class SignOutInterface {
  //signInFunction(BuildContext context) async {}
  //SnackBar displaySnackBar({String content}) {}
  //Future<User> signInWithGoogle({BuildContext context}) async {}
  Future<void> signOut({BuildContext context}) async {}
  //Future<FirebaseApp> initializeFirebase({BuildContext context}) async {}
}
