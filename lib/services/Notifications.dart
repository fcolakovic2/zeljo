import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:zeljoprojekat/services/Order.dart';
import 'package:zeljoprojekat/view/CheckOutView/pages/CheckOutScreen.dart';

class Notifications {
  var context;
  Notifications(context);
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      new FlutterLocalNotificationsPlugin();
  var initializationSettingsAndroid;
  var initializationSettingsIOS;
  var initializationSettings;
  Notifications.initialize();

  void showNotification(change) async {
    await _demoNotification(change);
  }

  Future<void> _demoNotification(change) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'channel_ID', 'channel name', 'channel description',
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'test ticker');

    var iOSChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSChannelSpecifics);

    if (change.doc.get("orderStatus") == "accepted") {
      await flutterLocalNotificationsPlugin.show(0, 'Poštovanje',
          'Vaša narudžba je prihvaćena', platformChannelSpecifics,
          payload: 'test oayload');
    } else if (change.doc.get("orderStatus") == "declined") {
      await flutterLocalNotificationsPlugin.show(0, 'Poštovanje',
          'Vaša narudžba je odbijena', platformChannelSpecifics,
          payload: 'test oayload');
    }
  }

  void orderStatusNotification() {
    Order().orders.snapshots().listen((querySnapshot) {
      querySnapshot.docChanges.forEach((change) {
        if (change.type == DocumentChangeType.modified) {
          showNotification(change);
        }
      });
    });
  }

  Future onSelectNotification(String payload) async {
    if (payload != null) {
      debugPrint('Notification payload: $payload');
    }
    await Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new CheckOutScreen()));
  }

  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text(title),
              content: Text(body),
              actions: <Widget>[
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: Text('Ok'),
                  onPressed: () async {
                    Navigator.of(context, rootNavigator: true).pop();
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckOutScreen()));
                  },
                )
              ],
            ));
  }

  void initialize() {
    print("sssss");
    initializationSettingsAndroid =
        new AndroidInitializationSettings('app_icon');
    initializationSettingsIOS = new IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }
}
