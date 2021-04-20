import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/homePageView/pages/signInScreen.dart';

Widget signOut(context) {
  return OutlinedButton(
    onPressed: () {
      signOut(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignInScreen()));
    },
    child: Text("Sign out"),
  );
}
