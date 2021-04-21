import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/shared/size_config.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/view/homePageView/widgets/googleLogo.dart';
import 'package:zeljoprojekat/view/homePageView/widgets/googleTekst.dart';
import 'package:zeljoprojekat/viewModel/signingViewModel.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.05,
      width: SizeConfig.screenWidth,
      child: _isSigningIn
          ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          : OutlinedButton(
              style: stilDugmeta,
              onPressed: () async {
                setState(() {
                  _isSigningIn = true;
                });
                User user = await signInWithGoogleViewModel(context);

                setState(() {
                  _isSigningIn = false;
                });
                signInViewModel(context);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  //  mainAxisSize: MainAxisSize.min,
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[GoogleLogo(), GoogleTekst()],
                ),
              ),
            ),
    );
  }
}
