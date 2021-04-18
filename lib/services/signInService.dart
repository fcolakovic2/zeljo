import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/interface/signInInterface.dart';
import 'package:zeljoprojekat/navigationBar.dart';
import 'package:zeljoprojekat/utils/authentication.dart';

class SignInService implements SignInInterface {
  @override
  signInFunction(BuildContext context) async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => MyStatefulWidget(),
      ),
    );
  }
}
