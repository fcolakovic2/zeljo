import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/homePageView/widgets/googleSignInButton.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: initializeFirebase(context),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error prilikom authenticationa');
        }
        return GoogleSignInButton();
      },
    );
  }
}
