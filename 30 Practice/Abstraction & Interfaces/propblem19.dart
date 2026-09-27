abstract class Payment {
  void pay(double amount);
}

class CashPayment extends Payment {
  @override
  void pay(double amount) => print('Paid \$$amount in cash.');
}

class CardPayment extends Payment {
  @override
  void pay(double amount) => print('Paid \$$amount using card.');
}

void main() {
  Payment p1 = CashPayment();
  Payment p2 = CardPayment();
  p1.pay(150.0);
  p2.pay(250.0);
}
