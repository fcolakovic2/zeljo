import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/ordersView/pages/ordersPage.dart';

class TextCard extends StatefulWidget {
  final document;
  TextCard(BuildContext context, DocumentSnapshot this.document);

  @override
  _TextCardState createState() => _TextCardState();
}

class _TextCardState extends State<TextCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        tileColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              convertDateTimeDisplay(
                  widget.document['created'].toDate().toString()),
              style: TextStyle(color: Colors.green),
            ),
            Text(
              widget.document['orderStatus'],
              style: TextStyle(color: Colors.green),
            ),
            Text(
              "19.60",
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
