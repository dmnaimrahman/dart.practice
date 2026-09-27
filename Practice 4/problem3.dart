import 'dart:io';

void main() {
  List<double> expenses = [];

  print("Enter 5 expenses:");

  for (int i = 0; i < 5; i++) {
    expenses.add(double.parse(stdin.readLineSync()!));
  }

  double total = 0;

  for (double expense in expenses) {
    total += expense;
  }

  print("Total expense: $total");
}