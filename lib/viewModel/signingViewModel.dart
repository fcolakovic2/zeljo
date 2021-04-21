import 'package:flutter/material.dart';
import 'package:zeljoprojekat/services/signingService.dart';

signInViewModel(BuildContext context) {
  return SigningService().signInFunction(context);
}

signInWithGoogleViewModel(BuildContext context) {
  return SigningService().signInWithGoogle(context: context);
}

signOutViewModel(BuildContext context) {
  return SigningService().signOut(context: context);
}

initializeFirebaseViewModel(BuildContext context) {
  return SigningService().initializeFirebase(context: context);
}
