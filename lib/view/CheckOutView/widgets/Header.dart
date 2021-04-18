import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/style/style.dart';

Widget header() {
  return SafeArea(
    child: Column(
      children: [
        Container(
          decoration: Styles.border,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Korpa',
                  style: Styles.headerBasket,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
