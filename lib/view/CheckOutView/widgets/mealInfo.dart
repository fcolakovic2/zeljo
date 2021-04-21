import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/style.dart';

class MealInfo extends StatefulWidget {
  var index;
  MealInfo(this.index);
  @override
  _MealInfoState createState() => _MealInfoState();
}

class _MealInfoState extends State<MealInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          naziv[widget.index],
          style: Styles.boldText,
        ),
        Text(
          velicina[widget.index],
          style: Styles.prilog,
        ),
      ],
    );
  }
}
