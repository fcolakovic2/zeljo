import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/homePageView/pages/signInScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return MaterialApp(
            title: 'Željo',
            home: Text("greska"),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Željo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              brightness: Brightness.dark,
            ),
            home: SignInScreen(),
          );
        }

        return MaterialApp(
          title: 'Željo',
          home: Text("loading"),
        );
      },
    );
  }
}
