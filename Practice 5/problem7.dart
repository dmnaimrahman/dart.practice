import 'dart:io';

void main() {
  File file = File("students.csv");

  file.writeAsStringSync(
    "Name,Age,Address\n"
    "Naiyemur,22,Sylhet\n"
    "John,21,Dhaka\n"
    "Alex,23,Chittagong"
  );

  print(file.readAsStringSync());
}