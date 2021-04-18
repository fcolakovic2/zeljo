import 'package:flutter/material.dart';

class ZeljoLogoWidget extends StatelessWidget {
  const ZeljoLogoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Image.asset(
              'assets/images/zeljoLogo.png',
              height: 160,
            ),
          ),
          // SizedBox(height: 20),
        ],
      ),
    );
  }
}
