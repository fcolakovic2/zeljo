import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/shared/SizeConfig.dart';
import 'package:zeljoprojekat/view/BasketView/widgets/Header.dart';
import 'package:zeljoprojekat/view/BasketView/widgets/ListViewItems.dart';

Widget mainBody() {
  return Scaffold(
    body: Column(
      children: [
        header(),
        Container(
          child: listViewItems(),
          height: 500,
        ),
      ],
    ),
  );
}
