import 'package:flutter/material.dart';
import '../style/style.dart';

SnackBar displaySnackBar({String content}) {
  return SnackBar(
    backgroundColor: Colors.black,
    content: Text(
      content,
      style: stilUsera,
    ),
  );
}
