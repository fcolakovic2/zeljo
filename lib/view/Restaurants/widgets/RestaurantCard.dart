import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/Restaurants/widgets/restItems.dart';

class RestaurantCard extends StatefulWidget {
  final document;
  RestaurantCard(BuildContext context, DocumentSnapshot this.document);
  @override
  _RestaurantCardState createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 173,
      width: 346,
      child: GestureDetector(
        onTap: () {},
        child: Card(
          shadowColor: Colors.grey[50],
          color: Colors.grey[50],
          child: restItems(context, widget.document),
        ),
      ),
    );
  }
}
