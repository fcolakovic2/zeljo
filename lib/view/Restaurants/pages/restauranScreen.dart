import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/Restaurants/widgets/RestaurantCard.dart';

import '../../../utils/style/style.dart';

class Restaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.white,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: Text(
          'Restorani',
          style: headerBasket,
        ),
      ),
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('restaurants').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Text('Loading places...');
          return ListView.builder(
            //itemExtent: 80.0,
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, ind) =>
                RestaurantCard(context, snapshot.data.docs[ind]),
          );
        },
      ),
    );
  }
}

mixin Firestore {}
