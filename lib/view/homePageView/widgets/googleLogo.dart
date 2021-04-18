import 'package:flutter/material.dart';

class GoogleLogo extends StatelessWidget {
  const GoogleLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Image(
        image: AssetImage("assets/images/google_logo.png"),
        alignment: Alignment.centerLeft,
        height: 35.0,
      ),
    );
  }
}
