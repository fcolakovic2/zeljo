import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  CollectionReference orders = FirebaseFirestore.instance.collection('orders');

  @override
  Widget build(BuildContext context) {
    List<Timestamp> datumi = [];
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

    return Scaffold(
        body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('orders').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                  itemCount: status.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Center(
                          child: Row(
                            children: [
                              Text(status[index]),
                              Text(datumi[index].toDate().toString()),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }));
  }
}
