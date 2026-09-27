class BankAccount {
  double _balance = 0.0;

  double get balance => _balance;

  set balance(double value) {
    if (value < 0) {
      print('Balance cannot be negative!');
    } else {
      _balance = value;
    }
  }
}

void main() {
  BankAccount acc = BankAccount();
  acc.balance = 5000.0;
  print('Balance: ${acc.balance}');
  acc.balance = -200.0;
  print('Balance: ${acc.balance}');
}
