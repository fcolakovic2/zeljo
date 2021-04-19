import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/login_background.png',
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    ]);
  }
}
