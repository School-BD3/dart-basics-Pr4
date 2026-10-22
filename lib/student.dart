import 'person.dart';

class Student extends Person {
  double averageGrade;

  Student({
  required super.name,
  required super.age,
  required this.averageGrade,
  });

  @override
  void displayInfo() {
    print('Ім’я студента: $name');
    print('Вік студента: $age');
    print('Середній бал: $averageGrade');
  }

  bool isAdult() {
    return age >= 18;
  }
}