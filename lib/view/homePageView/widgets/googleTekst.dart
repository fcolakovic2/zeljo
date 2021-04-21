import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/style/style.dart';

class GoogleTekst extends StatelessWidget {
  const GoogleTekst({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        'Sign in with Google',
        textAlign: TextAlign.left,
        style: naslovStyle,
      ),
    );
  }
}
