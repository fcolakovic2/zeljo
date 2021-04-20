import 'package:flutter/material.dart';
import 'package:zeljoprojekat/services/addMeal.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/view/mealDetailsView/widgets/listViewMeal.dart';
import 'package:zeljoprojekat/view/mealDetailsView/widgets/mealImage.dart';
import 'package:cool_alert/cool_alert.dart';

class MealDetails extends StatefulWidget {
  final document;
  MealDetails(this.document);
  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(
            child: Stack(
              children: [
                MealImage(widget.document),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    size: 26,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          ListViewMeal(widget.document),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextButton(
                  onPressed: () {
                    AddMeal().addMeal(indexRadio, widget.document);
                    CoolAlert.show(
                      context: context,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
