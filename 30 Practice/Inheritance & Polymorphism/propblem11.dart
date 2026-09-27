class Person {
  String name;
  Person(this.name);

  void displayInfo() {
    print('Person Name: $name');
  }
}

class Teacher extends Person {
  String subject;
  Teacher(String name, this.subject) : super(name);

  @override
  void displayInfo() {
    print('Teacher: $name, Subject: $subject');
  }
}

class Student extends Person {
  String grade;
  Student(String name, this.grade) : super(name);

  @override
  void displayInfo() {
    print('Student: $name, Grade: $grade');
  }
}

void main() {
  Person p1 = Teacher('Mr. Naim', 'Mathematics');
  Person p2 = Student('Sadia', 'A+');
  p1.displayInfo();
  p2.displayInfo();
}
