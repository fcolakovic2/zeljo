import 'package:zeljoprojekat/services/ChangePrice.dart';
import 'package:zeljoprojekat/services/Notifications.dart';
import 'package:zeljoprojekat/services/Order.dart';

addOrder() {
  return Order().addOrder();
}

orderStatusNotification(context) {
  return Notifications(context).orderStatusNotification();
}

changePrice() {
  return ChangePrice().changePrice();
}
