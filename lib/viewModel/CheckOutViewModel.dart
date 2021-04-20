import 'package:zeljoprojekat/services/changePrice.dart';
import 'package:zeljoprojekat/services/notifications.dart';
import 'package:zeljoprojekat/services/order.dart';

addOrder() {
  return Order().addOrder();
}

orderStatusNotification(context) {
  return Notifications(context).orderStatusNotification();
}

changePrice() {
  return ChangePrice().changePrice();
}
