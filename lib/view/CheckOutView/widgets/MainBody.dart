import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Bottom.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Header.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/ListViewItems.dart';
import 'package:zeljoprojekat/viewModel/CheckOutViewModel.dart';

Widget mainBody(context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          header(),
          Container(
            child: ListViewItems(),
            height: 350,
          ),
          Bottom(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: TextButton(
                    onPressed: () => addOrder(),
                    child: Text(
                      "Proslijedi",
                      style: Styles.yellowButtonText,
                    ),
                    style: Styles.yellowButton,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
