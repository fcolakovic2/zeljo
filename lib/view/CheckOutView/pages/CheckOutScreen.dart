import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/CheckOutView/widgets/MainBody.dart';

import '../../../utils/style/style.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.white,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: Text(
          'Korpa',
          style: Styles.headerBasket,
        ),
      ),
      body: mainBody(context),
    );
  }
}
