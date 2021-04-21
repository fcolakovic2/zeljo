// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';

class Order1 {
  Future<void> addOrder() {
    CollectionReference orders =
        FirebaseFirestore.instance.collection('orders');
    User userTrenutnii = FirebaseAuth.instance.currentUser;
    return orders
        .add({
          'orderStatus': "onPending",
          'created': Timestamp.now(),
          'price': ukupnaCijena,
          'email': userTrenutnii.email,
        })
        .then((value) => print("Order added"))
        .catchError((error) => print("Failed to add order: $error"));
  }
}
