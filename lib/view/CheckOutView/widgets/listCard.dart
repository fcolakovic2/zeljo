import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';
import 'package:zeljoprojekat/utils/style/style.dart';
import 'package:zeljoprojekat/view/checkOutView/widgets/mealInfo.dart';
import 'package:zeljoprojekat/viewModel/checkOutViewModel.dart';

class ListCard extends StatefulWidget {
  var index;
  ListCard(this.index);
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    if (naziv.length != 0) {
      return Container(
        height: 100,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: MealInfo(widget.index),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  cijena[widget.index] + " KM",
                  style: Styles.boldText,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      naziv.removeAt(widget.index);
                      velicina.removeAt(widget.index);
                      cijena.removeAt(widget.index);
                      changePrice();
                    });
                  },
                  child: Icon(
                    Icons.delete,
                    size: 26,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else
      return Container();
  }
}
