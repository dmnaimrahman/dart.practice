abstract class Person {
  String name;
  int id;

  Person(this.name, this.id);

  void displayInfo(); // abstraction
}

class Student extends Person {
  double _gpa = 0.0; // encapsulation

  Student(String name, int id) : super(name, id);

  double get gpa => _gpa;
  set gpa(double value) {
    if (value >= 0 && value <= 4.0) {
      _gpa = value;
    } else {
      print('Invalid GPA value.');
    }
  }

  @override
  void displayInfo() {
    // polymorphism (overridden)
    print('Student: $name (ID: $id), GPA: $_gpa');
  }
}

class Course {
  String courseCode;
  String title;
  int credits;

  Course(this.courseCode, this.title, this.credits);
}

class Enrollment {
  Student student;
  List<Course> enrolledCourses = [];

  Enrollment(this.student);

  void enroll(Course course) {
    enrolledCourses.add(course);
    print('${student.name} enrolled in ${course.title}');
  }

  void showEnrollments() {
    print('--- Enrollments for ${student.name} ---');
    for (var c in enrolledCourses) {
      print('${c.courseCode}: ${c.title} (${c.credits} credits)');
    }
  }
}

void main() {
  Student s1 = Student('Naim Rahman', 2201045);
  s1.gpa = 3.75;
  s1.displayInfo();

  Course c1 = Course('CSE101', 'Introduction to Programming', 3);
  Course c2 = Course('CSE201', 'Data Structures', 3);

  Enrollment enrollment = Enrollment(s1);
  enrollment.enroll(c1);
  enrollment.enroll(c2);
  enrollment.showEnrollments();
}
