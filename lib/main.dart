import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/MenuScreen/pages/menu_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuScreen(),
    );
  }
}
