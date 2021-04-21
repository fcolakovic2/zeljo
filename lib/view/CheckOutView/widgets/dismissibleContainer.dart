import 'package:flutter/material.dart';

Widget dismissibleContainer() {
  return Container(
    color: Colors.red,
    margin: EdgeInsets.symmetric(horizontal: 15),
    alignment: Alignment.centerRight,
    child: Icon(
      Icons.delete,
      color: Colors.white,
    ),
  );
}
