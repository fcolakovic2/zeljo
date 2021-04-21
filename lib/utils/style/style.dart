import 'package:flutter/material.dart';

final TextStyle naslovStyle = TextStyle(
  fontSize: 20,
  color: Colors.black54,
  fontWeight: FontWeight.w600,
);

final ButtonStyle stilDugmeta = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40),
    ),
  ),
);
final TextStyle boldText = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final TextStyle stilUsera = TextStyle(color: Colors.grey, letterSpacing: 0.2);

final TextStyle headerBasket = TextStyle(
  fontSize: 23,
  color: Colors.blue[900],
  letterSpacing: 2.5,
);

final TextStyle prilog = TextStyle(
  color: Colors.grey,
);

final BoxDecoration border = BoxDecoration(
  border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000))),
);

final ButtonStyle yellowButton = TextButton.styleFrom(
  backgroundColor: Colors.amber[600],
);

final TextStyle yellowButtonText = TextStyle(
  color: Colors.black,
);

final TextStyle boldBigText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Colors.black,
);

TextStyle textCardStyle(document) {
  return TextStyle(
    color: document['orderStatus'] == 'accepted'
        ? Colors.green
        : document['orderStatus'] == 'onPending'
            ? Colors.black
            : Colors.red,
  );
}
