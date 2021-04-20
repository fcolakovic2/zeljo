import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/MenuScreen/widgets/appBarText.dart';
import 'package:zeljoprojekat/view/MenuScreen/widgets/menuCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../viewModel/signInViewModel.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        actions: <Widget>[signOut(context)],
        title: appBarText(),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('meals').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Text('Loading meals...');
          return ListView.builder(
            //itemExtent: 80.0,
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, index) =>
                MenuCard(context, snapshot.data.docs[index]),
          );
        },
      ),
    );
  }
}

mixin Firestore {}
