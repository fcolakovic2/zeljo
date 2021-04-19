import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zeljoprojekat/view/ordersView/widgets/TextCard.dart';
import 'package:zeljoprojekat/view/ordersView/widgets/appBarText.dart';

String convertDateTimeDisplay(String date) {
  final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  final DateFormat serverFormater = DateFormat('dd-MM-yyyy');
  final DateTime displayDate = displayFormater.parse(date);
  final String formatted = serverFormater.format(displayDate);
  return formatted;
}

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  CollectionReference orders = FirebaseFirestore.instance.collection('orders');

  @override
  Widget build(BuildContext context) {
    /*  Future.delayed(const Duration(milliseconds: 1), () {
      setState(() {});
    });*/

    /*  List<Timestamp> datumi = [];
    List<String> status = [];

    orders.snapshots().forEach((element) {
      element.docs.forEach((element2) {
        datumi.add(element2.get('created'));
      });
    });

    orders.snapshots().forEach((element) {
      element.docs.forEach((element2) {
        status.add(element2.get('orderStatus'));
      });
    });

    @override
    void initState() {
      datumi.clear();
      status.clear();
      super.initState();
    }
*/
    User userTrenutni = FirebaseAuth.instance.currentUser;

    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: appBarText(),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('orders')
                .where("email", isEqualTo: userTrenutni.email)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }

              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    return TextCard(context, snapshot.data.docs[index]);
                  });
            }));
  }
}
