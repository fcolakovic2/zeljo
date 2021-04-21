import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zeljoprojekat/navigationBar.dart';
import 'package:zeljoprojekat/view/Restaurants/pages/restauranScreen.dart';
import 'package:zeljoprojekat/view/homePageView/pages/signInScreen.dart';
import 'package:zeljoprojekat/viewModel/CheckOutViewModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  onInit() {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    orderStatusNotification(context);

    return MaterialApp(
      title: 'Željo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: FutureBuilder(
        builder: (context, snapshot) {
          GoogleSignIn _googleSignIn = GoogleSignIn();
          // Assign widget based on availability of currentUser
          if (_googleSignIn.clientId != null) {
            return MyStatefulWidget();
          } else {
            return SignInScreen();
          }
        },
      ),
    );
  }
}
