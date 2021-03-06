import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/mealDetailsView/widgets/addButton.dart';
import 'package:zeljoprojekat/view/mealDetailsView/widgets/listViewMeal.dart';
import 'package:zeljoprojekat/view/mealDetailsView/widgets/mealImage.dart';
import 'package:zeljoprojekat/view/mealDetailsView/widgets/backButton.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:zeljoprojekat/viewModel/addModifyViewModel.dart';

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
                backButtonA(context),
              ],
            ),
          ),
          ListViewMeal(widget.document),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AddButton(context, widget.document),
            ],
          ),
        ],
      ),
    );
  }
}
