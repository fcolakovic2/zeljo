import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/shared/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zeljoprojekat/view/MenuScreen/widgets/cardItems.dart';
import 'package:zeljoprojekat/view/mealDetailsView/pages/mealDetailsView.dart';

class MenuCard extends StatefulWidget {
  final document;
  MenuCard(BuildContext context, DocumentSnapshot this.document);

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.blockSizeVertical * 20,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MealDetails(widget.document)),
          );
        },
        child: Card(
          shadowColor: Colors.grey[50],
          color: Colors.grey[50],
          child: cardItems(context, widget.document),
        ),
      ),
    );
  }
}
