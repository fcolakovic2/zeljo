import 'package:flutter/material.dart';

class Style {
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
    backgroundColor: Colors.amber,
  );

  static final TextStyle yellowButtonText = TextStyle(
    color: Colors.black,
  );

  static final TextStyle boldText = TextStyle(
    fontWeight: FontWeight.bold,
  );
}
