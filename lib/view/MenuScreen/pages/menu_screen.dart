import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/MenuScreen/widgets/appBarText.dart';
import 'package:zeljoprojekat/view/MenuScreen/widgets/menuCard.dart';

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
        title: appBarText(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              MenuCard(),
              MenuCard(),
              MenuCard(),
              MenuCard(),
              MenuCard(),
              MenuCard(),
              MenuCard(),
              MenuCard(),
            ],
          ),
        ),
      ),
    );
  }
}