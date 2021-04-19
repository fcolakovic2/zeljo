import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/MenuScreen/pages/menu_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:zeljoprojekat/view/homePageView/pages/signInScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Text('Error'),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SignInScreen(),
          );
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Text('Loading...'),
        );

        // Otherwise, show something whilst waiting for initialization to complete
      },
    );
  }
}
