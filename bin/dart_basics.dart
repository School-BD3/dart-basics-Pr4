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
}