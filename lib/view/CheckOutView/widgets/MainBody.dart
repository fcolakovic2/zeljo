import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/style/Styles.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Bottom.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Header.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/ListViewItems.dart';
import 'package:zeljoprojekat/viewModel/CheckOutViewModel.dart';

Widget mainBody(context) {
  return Scaffold(
    body: Column(
      children: [
        header(),
        Container(
          child: ListViewItems(),
          height: 500,
        ),
        Bottom(),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextButton(
                onPressed: () => addOrder(),
                child: Text(
                  "Proslijedi",
                  style: Style.yellowButtonText,
                ),
                style: Style.yellowButton,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
