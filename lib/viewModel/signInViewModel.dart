import 'package:flutter/material.dart';
import 'package:zeljoprojekat/services/signInService.dart';

signInFunction(BuildContext context) {
  return SignInService().signInFunction(context);
}

displaySnackBar({String content}) {
  return SignInService().displaySnackBar(content: content);
}

signInWithGoogle(BuildContext context) {
  return SignInService().signInWithGoogle(context: context);
}
