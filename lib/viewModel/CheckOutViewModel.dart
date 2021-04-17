import 'package:zeljoprojekat/services/Notifications.dart';
import 'package:zeljoprojekat/services/Order.dart';

addOrder() {
  return Order().addOrder();
}

orderStatusNotification(context) {
  return Notifications(context).orderStatusNotification();
}
