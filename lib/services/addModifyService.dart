import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:zeljoprojekat/interface/addModifyInterface.dart';
import 'package:zeljoprojekat/utils/dummyData/dummyData.dart';

class AddModifyService implements AddModifyInterface {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  CollectionReference orders = FirebaseFirestore.instance.collection('orders');
  User userTrenutnii = FirebaseAuth.instance.currentUser;

  @override
  void addMeal(index, document) {
    naziv.add(document['name']);
    print(index);
    velicina.add(porcije[index]);
    if (index == 0) cijena.add(document["mala_porcija"]);

    if (index == 1) cijena.add(document["srednja_porcija"]);

    if (index == 2) cijena.add(document["velika_porcija"]);
  }

  @override
  Future<void> addOrder() {
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

  @override
  String changePrice() {
    double cijenaUkupna = 0;
    for (var i = 0; i < cijena.length; i++) {
      cijenaUkupna += double.parse(cijena[i]);
    }
    ukupnaCijena = cijenaUkupna.toString();
    return ukupnaCijena;
  }
}
