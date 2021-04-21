import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/viewModel/mealsViewModel.dart';

class AddButton extends StatefulWidget {
  var context;
  var document;
  AddButton(this.context, this.document);
  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(widget.context).size.width * 0.9,
      child: TextButton(
        onPressed: () {
          addMeal(indexRadio, widget.document);
          CoolAlert.show(
            context: widget.context,
            title: "Čestitamo!",
            type: CoolAlertType.success,
            text: "Uspješno ste dodali jelo u korpu",
          );
        },
        child: Text(
          "Dodaj",
          style: Styles.yellowButtonText,
        ),
        style: Styles.yellowButton,
      ),
    );
  }
}
