abstract class NotificationsInterface {
  void showNotification(change) async {}

  Future<void> demoNotification(change) async {}

  void orderStatusNotification() {}

  Future onSelectNotification(String payload) async {}

  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {}
}
