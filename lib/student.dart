import 'person.dart';

class Student extends Person {
  double _averageGrade;

  Student({
    required super.name,
    required super.age,
    required this._averageGrade,
});

  double get averageGrade => _averageGrade;

  void updateAverageGrade(double newGrade) {
    if (newGrade >= 0 && newGrade <= 100) {
      _averageGrade = newGrade;
    } else {
      print('Помилка: оцінка повинна бути від 0 до 100.');
    }
  }

  @override
  void displayInfo() {
    print('Ім’я студента: $name');
    print('Вік студента: $age');
    print('Середній бал: $_averageGrade');
  }

  bool isAdult() {
    return age >= 18;
  }
}