import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/style/Styles.dart';

Widget bottom() {
  return Container(
    decoration: Style.border,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/cupon.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Total narudžbe",
                style: Style.boldBigText,
              ),
              Text(
                "11.00KM",
                style: Style.boldBigText,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
