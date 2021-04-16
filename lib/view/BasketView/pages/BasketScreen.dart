import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/BasketView/widgets/MainBody.dart';

class BasketScreen extends StatefulWidget {
  @override
  _BasketScreenState createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainBody(),
    );
  }
}
