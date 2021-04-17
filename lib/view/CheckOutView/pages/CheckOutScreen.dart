import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/MainBody.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainBody(),
    );
  }
}
