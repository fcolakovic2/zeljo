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
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              convertDateTimeDisplay(
                  widget.document['created'].toDate().toString()),
              style: TextStyle(
                color: widget.document['orderStatus'] == 'accepted'
                    ? Colors.green
                    : widget.document['orderStatus'] == "onPending"
                        ? Colors.black
                        : Colors.red,
              ),
            ),
            Text(
              widget.document['orderStatus'],
              style: TextStyle(
                  color: widget.document['orderStatus'] == 'accepted'
                      ? Colors.green
                      : widget.document['orderStatus'] == 'onPending'
                          ? Colors.black
                          : Colors.red),
            ),
            Text(
              widget.document['price'],
              style: TextStyle(
                color: widget.document['orderStatus'] == 'accepted'
                    ? Colors.green
                    : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
