// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';

class Order {
  Order();

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  CollectionReference orders = FirebaseFirestore.instance.collection('orders');
  User userTrenutnii = FirebaseAuth.instance.currentUser;

  Future<void> addOrder() {
    // Call the user's CollectionReference to add a new user
    return orders
        .add({
          'orderStatus': "onPending",
          'created': Timestamp.now(),
          'price': cijena[1],
          'email': userTrenutnii.email,
        })
        .then((value) => print("Order added"))
        .catchError((error) => print("Failed to add order: $error"));
  }
}
