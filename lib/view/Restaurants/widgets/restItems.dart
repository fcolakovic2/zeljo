import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget restItems(BuildContext context, DocumentSnapshot document) {
  String image = document['image_url'];
  String hours = 'Opening Hours \n' +
      document['opening_hour'].toString() +
      '.00 - ' +
      document['closing_hour'].toString() +
      '.00';
  String number = document['number'];
  String address = document['address'];

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              document['name'],
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                address,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(number,
                style: TextStyle(
                  fontSize: 17,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(hours,
                  style: TextStyle(fontSize: 17, color: Colors.grey[400])),
            ),
          ],
        ),
      ),
      Image.asset(
        'assets/images/$image.png',
        height: 173,
        width: 160,
        fit: BoxFit.fill,
      ),
    ],
  );
}
