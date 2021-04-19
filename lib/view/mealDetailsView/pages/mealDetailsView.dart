import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/shared/sizeConfig.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/view/mealDetailsView/widgets/listViewMeal.dart';
import 'package:zeljoprojekat/view/mealDetailsView/widgets/mealImage.dart';

class MealDetails extends StatefulWidget {
  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  @override
  void initState() {
    // TODO: implement initState
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
                MealImage(),
                TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.chevron_left,
                    size: 26,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          ListViewMeal(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextButton(
                  onPressed: () => {},
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
