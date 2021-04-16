import 'package:flutter/material.dart';
import 'package:zeljoprojekat/services/Order.dart';

Widget bottom() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: Order().addOrder,
          child: Text(
            "Add Order",
          ),
        ),
      ],
    ),
  );
}
