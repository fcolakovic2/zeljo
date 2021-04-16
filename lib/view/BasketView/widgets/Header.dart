import 'package:flutter/material.dart';
import 'package:zeljoprojekat/services/Order.dart';
import 'package:zeljoprojekat/utils/style/Styles.dart';

Widget header() {
  return SafeArea(
    child: Column(
      children: [
        Container(
          decoration: Style.border,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Korpa',
                  style: Style.headerBasket,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
