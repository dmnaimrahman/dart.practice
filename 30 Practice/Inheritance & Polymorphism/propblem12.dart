class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Salary: $salary');
  }
}

void main() {
  Employee e = Employee('Naim', 30, 55000.0);
  e.displayInfo();
}
