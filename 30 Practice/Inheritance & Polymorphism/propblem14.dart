class Notification {
  String displayNotification() => 'Generic notification';
}

class EmailNotification extends Notification {
  @override
  String displayNotification() => 'You have a new email!';
}

class SMSNotification extends Notification {
  @override
  String displayNotification() => 'You have a new SMS!';
}

void main() {
  List<Notification> notifications = [EmailNotification(), SMSNotification()];
  for (var n in notifications) {
    print(n.displayNotification());
  }
}
