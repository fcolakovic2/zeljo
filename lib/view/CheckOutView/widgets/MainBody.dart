import 'package:flutter/material.dart';
import 'package:zeljoprojekat/services/Order.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Header.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/ListViewItems.dart';

Widget mainBody() {
  return Scaffold(
    body: Column(
      children: [
        header(),
        Container(
          child: listViewItems(),
          height: 500,
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: Order().addOrder,
              child: Text(
                "Add Order",
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
