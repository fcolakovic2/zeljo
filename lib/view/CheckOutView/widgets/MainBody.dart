import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Header.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/ListViewItems.dart';
import 'package:zeljoprojekat/viewModel/ChecKOutViewModel.dart';

Widget mainBody(context) {
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
              onPressed: () => addOrder(),
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
