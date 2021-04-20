import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zeljoprojekat/view/homePageView/widgets/authWidget.dart';
import 'package:zeljoprojekat/view/homePageView/widgets/backgroundWidget.dart';
import 'package:zeljoprojekat/view/homePageView/widgets/zeljoLogo.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundWidget(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: 20.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(),
                  ZeljoLogoWidget(),
                  AuthWidget(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
