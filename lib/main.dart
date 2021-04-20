import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zeljoprojekat/navigationBar.dart';
import 'package:zeljoprojekat/view/Restaurants/pages/restaurant_screen.dart';
import 'package:zeljoprojekat/view/homePageView/pages/signInScreen.dart';
import 'package:zeljoprojekat/viewModel/CheckOutViewModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          // Future<User> user = signInWithGoogle(context);
          User firebaseUser = FirebaseAuth.instance.currentUser;

          // Assign widget based on availability of currentUser
          if (firebaseUser != null) {
            return MyStatefulWidget();
          } else {
            return SignInScreen();
          }
        },
      ),
    );
  }
}
