class Student {
  String name;
  int age;
  double averageGrade;

  Student({
    required this.name,
    required this.age,
    required this.averageGrade,
  });

  void displayInfo() {
    print('Ім’я студента: $name');
    print('Вік студента: $age');
    print('Середній бал: $averageGrade');
  }

  bool isAdult() {
    return age >= 18;
  }
}