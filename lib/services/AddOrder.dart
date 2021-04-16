// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/textVariables/textVariables.dart';

class AddOrder extends StatelessWidget {
  AddOrder();
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference orders =
        FirebaseFirestore.instance.collection('orders');

    Future<void> addOrder() {
      // Call the user's CollectionReference to add a new user
      return orders
          .add({
            'orderName': "test",
          })
          .then((value) => print("Order added"))
          .catchError((error) => print("Failed to add order: $error"));
    }

    return TextButton(
      onPressed: addOrder,
      child: Text(
        "Add Order",
      ),
    );
  }
}
