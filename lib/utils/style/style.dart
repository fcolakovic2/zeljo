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
  static final TextStyle boldText = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle stilUsera =
      TextStyle(color: Colors.grey, letterSpacing: 0.2);

  static final TextStyle headerBasket = TextStyle(
    fontSize: 25,
    color: Colors.blue[800],
  );

  static final TextStyle prilog = TextStyle(
    color: Colors.grey,
  );

  static final BoxDecoration border = BoxDecoration(
    border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000))),
  );

  static final ButtonStyle yellowButton = TextButton.styleFrom(
    backgroundColor: Colors.amber[600],
  );

  static final TextStyle yellowButtonText = TextStyle(
    color: Colors.black,
  );

  static final TextStyle boldBigText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.black,
  );
}
