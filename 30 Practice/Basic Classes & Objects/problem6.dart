class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: $amount, New Balance: $balance');
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print('Insufficient funds!');
    } else {
      balance -= amount;
      print('Withdrew: $amount, New Balance: $balance');
    }
  }
}

void main() {
  BankAccount account = BankAccount(1000.0);
  account.deposit(500.0);
  account.withdraw(300.0);
  account.withdraw(2000.0);
}
