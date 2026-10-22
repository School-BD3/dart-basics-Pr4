import 'package:dart_basics/student.dart';
import 'package:test/test.dart';

void main() {
  group('Student tests', () {
    test('Студент повинен зберігати ім’я та вік', () {
      Student student = Student(
        name: 'Олександр',
        age: 20,
        averageGrade: 90.0,
      );

      expect(student.name, 'Олександр');
      expect(student.age, 20);
    });

    test('Середній бал повинен оновлюватися', () {
      Student student = Student(
        name: 'Марія',
        age: 19,
        averageGrade: 85.0,
      );

      student.updateAverageGrade(95.0);

      expect(student.averageGrade, 95.0);
    });

    test('Некоректна оцінка не повинна змінювати середній бал', () {
      Student student = Student(
        name: 'Іван',
        age: 18,
        averageGrade: 80.0,
      );

      student.updateAverageGrade(150.0);

      expect(student.averageGrade, 80.0);
    });

    test('Повнолітній студент повинен визначатися правильно', () {
      Student student = Student(
        name: 'Андрій',
        age: 20,
        averageGrade: 90.0,
      );

      expect(student.isAdult(), isTrue);
    });

    test('Неповнолітній студент не повинен вважатися повнолітнім', () {
      Student student = Student(
        name: 'Олена',
        age: 16,
        averageGrade: 88.0,
      );

      expect(student.isAdult(), isFalse);
    });
  });
}