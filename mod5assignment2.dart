class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: \$${salary.toStringAsFixed(2)}");
  }
}
class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  @override
  void displayInfo() {
    print("---- Manager Details ----");
    super.displayInfo(); // Call parent method
    print("Department: $department");
    print("-------------------------");
  }
}

// Subclass Developer
class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  @override
  void displayInfo() {
    print("---- Developer Details ----");
    super.displayInfo(); // Call parent method
    print("Programming Language: $programmingLanguage");
    print("---------------------------");
  }
}

void main() {
  Manager manager = Manager("Himel Ahmed", 75000, "HR");
  Developer developer = Developer("Ahad Shekh", 60000, "Dart");

  manager.displayInfo();
  developer.displayInfo();
}
