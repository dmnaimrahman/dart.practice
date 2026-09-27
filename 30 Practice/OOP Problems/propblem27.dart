class Company {
  String name;
  Company(this.name);

  double calculateSalary() => 0.0;
}

class Manager extends Company {
  double baseSalary;
  double bonus;

  Manager(String name, this.baseSalary, this.bonus) : super(name);

  @override
  double calculateSalary() => baseSalary + bonus;
}

class Developer extends Company {
  double baseSalary;
  int overtimeHours;
  double overtimeRate;

  Developer(String name, this.baseSalary, this.overtimeHours, this.overtimeRate)
    : super(name);

  @override
  double calculateSalary() => baseSalary + (overtimeHours * overtimeRate);
}

void main() {
  Manager m = Manager('Naim Rahman', 80000, 10000);
  Developer d = Developer('Nusrat Jahan', 60000, 15, 500);

  print('${m.name} Salary: ${m.calculateSalary()}');
  print('${d.name} Salary: ${d.calculateSalary()}');
}
