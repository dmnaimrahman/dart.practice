import 'dart:io';

void main() {
  File("hello.txt").writeAsStringSync(
    "\nJohn",
    mode: FileMode.append,
  );

  print("Friend's name added.");
}