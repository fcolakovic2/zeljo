import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zeljoprojekat/view/MenuScreen/pages/menu_screen.dart';
=======
import 'package:zeljoprojekat/view/homePageView/pages/signInScreen.dart';
>>>>>>> main

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
            home: MenuScreen(),
          );
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Text('Loading...'),
        );

        // Otherwise, show something whilst waiting for initialization to complete
      },
=======
    return MaterialApp(
      title: 'Željo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: SignInScreen(),
>>>>>>> main
    );
  }
}
