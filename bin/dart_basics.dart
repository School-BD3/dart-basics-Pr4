import 'package:dart_basics/student.dart';
import 'package:dart_basics/person.dart';

void printGreeting(String name) {
  print('Привіт, $name!');
}

int calculateSum(int firstNumber, int secondNumber) {
  return firstNumber + secondNumber;
}

double calculateAverage(double firstNumber, double secondNumber) {
  return (firstNumber + secondNumber) / 2;
}

void main() {
  int firstNumber = 10;
  int secondNumber = 3;

  double price = 15.5;
  num discount = 2;

  print('Перше число: $firstNumber');
  print('Друге число: $secondNumber');
  print('Ціна: $price');
  print('Знижка: $discount');

  print('\nМатематичні операції:');
  print('Додавання: ${firstNumber + secondNumber}');
  print('Віднімання: ${firstNumber - secondNumber}');
  print('Множення: ${firstNumber * secondNumber}');
  print('Ділення: ${firstNumber / secondNumber}');
  print('Цілочисельне ділення: ${firstNumber ~/ secondNumber}');
  print('Остача від ділення: ${firstNumber % secondNumber}');

  int roundedPrice = price.toInt();
  double convertedNumber = firstNumber.toDouble();

  print('\nПеретворення типів:');
  print('Ціна без дробової частини: $roundedPrice');
  print('Число типу double: $convertedNumber');

  String firstName = 'Daniil';
  String lastName = 'Voinalovych';

  String fullName = '$firstName $lastName';

  print('\nРобота з рядками:');
  print('Ім’я: $firstName');
  print('Прізвище: $lastName');
  print('Повне ім’я: $fullName');
  print('Кількість символів: ${fullName.length}');
  print('У верхньому регістрі: ${fullName.toUpperCase()}');
  print('У нижньому регістрі: ${fullName.toLowerCase()}');
  print('Ім’я містить ініціал D: ${firstName.startsWith('D')}');
  print('Ім’я містить підрядок an: ${firstName.contains('an')}');

  String text = '''
Це приклад
багаторядкового
тексту в Dart.
''';

  print('\nБагаторядковий текст:');
  print(text);

  String message = '  Основи мови Dart  ';

  print('Початковий текст: "$message"');
  print('Після trim(): "${message.trim()}"');
  print('Заміна тексту: ${message.replaceAll('Dart', 'Flutter')}');

  int age = 19;
  double averageGrade = 85.5;
  bool isStudent = true;

  print('\nЛогічні значення та умови:');
  print('Вік: $age');
  print('Середній бал: $averageGrade');
  print('Студент: $isStudent');

  print('\nОперації порівняння:');
  print('Вік >= 18: ${age >= 18}');
  print('Вік < 18: ${age < 18}');
  print('Бал >= 60: ${averageGrade >= 60}');
  print('Бал == 100: ${averageGrade == 100}');

  print('\nЛогічні операції:');
  bool isAdult = age >= 18;
  bool hasPermission = false;
  
  bool studentAndAdult = isStudent && isAdult;
  bool studentOrAdult = hasPermission || isAdult;
  bool isNotStudent = !isStudent;

  print('Студент і повнолітній: $studentAndAdult');
  print('Має дозвіл або є повнолітнім: $studentOrAdult');
  print('Не студент: $isNotStudent');

  print('\nПеревірка умов:');

  if (age >= 18) {
    print('Особа повнолітня.');
  } else {
    print('Особа неповнолітня.');
  }

  if (averageGrade >= 90) {
    print('Рівень успішності: відмінний.');
  } else if (averageGrade >= 75) {
    print('Рівень успішності: добрий.');
  } else if (averageGrade >= 60) {
    print('Рівень успішності: задовільний.');
  } else {
    print('Рівень успішності: незадовільний.');
  }

  String day = 'Monday';

  switch (day) {
    case 'Monday':
      print('День тижня: понеділок.');
    case 'Tuesday':
      print('День тижня: вівторок.');
    case 'Wednesday':
      print('День тижня: середа.');
    default:
      print('Інший день тижня.');
  }


    print('\nЦикл for:');

  for (int i = 1; i <= 5; i++) {
    print('Ітерація $i');
  }

  print('\nЦикл while:');

  int counter = 1;

  while (counter <= 5) {
    print('Лічильник: $counter');
    counter++;
  }

  print('\nЦикл do-while:');

  int number = 1;

  do {
    print('Число: $number');
    number++;
  } while (number <= 5);

  print('\nРобота зі списком List:');

  List<String> students = ['Анна', 'Данііл', 'Олександр'];

  print('Усі студенти: $students');
  print('Перший студент: ${students[0]}');

  students.add('Марія');
  print('Після додавання: $students');

  students.remove('Анна');
  print('Після видалення: $students');

  print('\nРобота з множиною Set:');

  Set<int> numbers = {1, 2, 3, 4, 5};

  print('Унікальні числа: $numbers');

  numbers.add(6);
  print('Після додавання: $numbers');

  numbers.remove(2);
  print('Після видалення: $numbers');

  print('\nРобота з Map:');

  Map<String, int> studentGrades = {
    'Анна': 90,
    'Данііл': 85,
    'Олександр': 78,
  };

  print('Оцінки студентів: $studentGrades');
  print('Оцінка Данила: ${studentGrades['Данііл']}');

  studentGrades['Марія'] = 95;
  print('Після додавання студента: $studentGrades');

  studentGrades.remove('Олександр');
  print('Після видалення студента: $studentGrades');

  print('\nРобота з функціями:');

  printGreeting('Данііл');

  int sum = calculateSum(10, 5);
  print('Сума чисел: $sum');

  double average = calculateAverage(10, 20);
  print('Середнє арифметичне: $average');

  print('\nРобота з класами та об’єктами:');

  Student student = Student(
    name: 'Данііл',
    age: 19,
    averageGrade: 85.5,
  );

  student.displayInfo();

  print('\nПеревірка інкапсуляції:');

  print('Поточний середній бал: ${student.averageGrade}');

  student.updateAverageGrade(92.0);

  print('Новий середній бал: ${student.averageGrade}');

  student.updateAverageGrade(150.0);

  print('Середній бал після некоректного значення: ${student.averageGrade}');

  print('Повнолітній: ${student.isAdult()}');

    print('\nДемонстрація поліморфізму:');

  List<Person> people = [
    Student(
      name: 'Олександр',
      age: 20,
      averageGrade: 90.0,
    ),
    Student(
      name: 'Марія',
      age: 19,
      averageGrade: 95.5,
    ),
  ];

  for (Person person in people) {
    person.displayInfo();
    print('--------------------');
  }
}