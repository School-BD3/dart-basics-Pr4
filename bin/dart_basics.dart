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
}