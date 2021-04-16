import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/MenuScreen/widgets/appBarText.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: appBarText(),
        centerTitle: true,
      ),
    );
  }
}
