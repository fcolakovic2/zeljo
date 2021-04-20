import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Bottom.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/Header.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/ListViewItems.dart';
import 'package:zeljoprojekat/viewModel/CheckOutViewModel.dart';

import 'ListViewItems.dart';
import 'ListViewItems.dart';
import 'ListViewItems.dart';

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
                    onPressed: () {
                      if (naziv.length > 0) {
                        addOrder();
                        print("s");
                        CoolAlert.show(
                          context: context,
                          title: "Hvala na narudžbi!",
                          type: CoolAlertType.info,
                          text:
                              "Uskoro ćete dobiti informaciju da li je narudžba prihvacena ili odbijena",
                        );
                        naziv.clear();
                        cijena.clear();
                        velicina.clear();
                      }
                    },
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
