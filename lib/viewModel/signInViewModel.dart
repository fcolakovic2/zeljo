import 'package:flutter/material.dart';
import 'package:zeljoprojekat/services/signInService.dart';

signInFunction(BuildContext context) {
  return SignInService().signInFunction(context);
}

signInWithGoogle(BuildContext context) {
  return SignInService().signInWithGoogle(context: context);
}

signOut(BuildContext context) {
  return SignInService().signOut(context: context);
}

initializeFirebase(BuildContext context) {
  return SignInService().initializeFirebase(context: context);
}
