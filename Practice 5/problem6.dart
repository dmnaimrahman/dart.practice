import 'dart:io';

void main() {
  File("hello_copy.txt").deleteSync();

  print("File deleted.");
}