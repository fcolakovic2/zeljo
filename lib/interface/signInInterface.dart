import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class SignInInterface {
  signInFunction(BuildContext context) async {}
  SnackBar displaySnackBar({String content}) {}
  Future<User> signInWithGoogle({BuildContext context}) async {}
}
