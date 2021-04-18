import 'package:flutter/material.dart';

class Styles {
  static final TextStyle naslovStyle = TextStyle(
    fontSize: 20,
    color: Colors.black54,
    fontWeight: FontWeight.w600,
  );

  static final ButtonStyle stilDugmeta = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    ),
  );
}
