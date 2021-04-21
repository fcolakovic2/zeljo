import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

abstract class SigningInterface {
  signInFunction(BuildContext context) async {}
  Future<User> signInWithGoogle({BuildContext context}) async {}
  Future<void> signOut({BuildContext context}) async {}
  Future<FirebaseApp> initializeFirebase({BuildContext context}) async {}
}
