import 'dart:math';

void main() {
  String chars = "abcdefghijklmnopqrstuvwxyz1234567890";
  String password = "";

  for (int i = 0; i < 8; i++) {
    password += chars[Random().nextInt(chars.length)];
  }

  print("Password: $password");
}