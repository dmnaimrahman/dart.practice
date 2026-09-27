import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");

    String choice = stdin.readLineSync()!;

    if (choice == "1") {
      print("Enter task:");
      tasks.add(stdin.readLineSync()!);
    } 
    else if (choice == "2") {
      print("Enter task to remove:");
      tasks.remove(stdin.readLineSync()!);
    } 
    else if (choice == "3") {
      print(tasks);
    } 
    else if (choice == "4") {
      break;
    }
  }
}