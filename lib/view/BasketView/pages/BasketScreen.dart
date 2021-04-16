import 'package:flutter/material.dart';
import 'package:zeljoprojekat/utils/shared/SizeConfig.dart';

class BasketScreen extends StatefulWidget {
  @override
  _BasketScreenState createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Korpa'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
