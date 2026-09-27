enum OrderStatus { pending, shipped, delivered }

void displayStatusMessage(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print('Your order is pending.');
      break;
    case OrderStatus.shipped:
      print('Your order has been shipped.');
      break;
    case OrderStatus.delivered:
      print('Your order has been delivered.');
      break;
  }
}

void main() {
  displayStatusMessage(OrderStatus.pending);
  displayStatusMessage(OrderStatus.shipped);
  displayStatusMessage(OrderStatus.delivered);
}
