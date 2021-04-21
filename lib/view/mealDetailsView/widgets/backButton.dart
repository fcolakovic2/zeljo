import 'package:flutter/material.dart';

Widget backButtonA(context) {
  return TextButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: Icon(
      Icons.chevron_left,
      size: 26,
      color: Colors.grey[500],
    ),
  );
}
