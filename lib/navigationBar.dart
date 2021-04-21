import 'package:flutter/material.dart';
import 'package:zeljoprojekat/view/CheckOutView/pages/checkOutScreen.dart';
import 'package:zeljoprojekat/view/MenuScreen/pages/menuScreen.dart';
import 'package:zeljoprojekat/view/MenuScreen/widgets/menuCard.dart';
import 'package:zeljoprojekat/view/Restaurants/pages/restauranScreen.dart';
import 'package:zeljoprojekat/view/mealDetailsView/pages/mealDetailsView.dart';
import 'package:zeljoprojekat/view/ordersView/pages/ordersPage.dart';

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Zeljo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    MenuScreen(),
    Restaurants(),
    CheckOutScreen(),
    OrderPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Naruči sad',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.grey,
            ),
            label: 'Restorani',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: 'Korpa',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_pin,
              color: Colors.grey,
            ),
            label: 'Narudžbe',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
