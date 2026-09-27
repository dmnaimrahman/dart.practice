class Customer {
  final String name;
  final int id;
  final String email;

  const Customer(this.name, this.id, this.email);

  void displayInfo() {
    print('Customer: $name (ID: $id), Email: $email');
  }
}

void main() {
  const Customer c1 = Customer('Naim Khan', 172, 'naim@example.com');
  c1.displayInfo();
}
