import 'dart:io';

void main() {
  File("hello.txt").writeAsStringSync("Naiyemur Rahman");
  print("Name added.");
}