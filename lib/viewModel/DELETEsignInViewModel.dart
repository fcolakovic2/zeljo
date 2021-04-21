import 'package:flutter/material.dart';
import 'package:zeljoprojekat/services/signingService.dart';

signInFunction(BuildContext context) {
  return SigningService().signInFunction(context);
}

signInWithGoogle(BuildContext context) {
  return SigningService().signInWithGoogle(context: context);
}

signOut(BuildContext context) {
  return SigningService().signOut(context: context);
}

initializeFirebase(BuildContext context) {
  return SigningService().initializeFirebase(context: context);
}
