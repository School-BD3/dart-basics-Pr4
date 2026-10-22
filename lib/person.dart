class Person {
  String name;
  int age;

  Person({
    required this.name,
    required this.age,
  });

  void displayInfo() {
    print('Ім’я: $name');
    print('Вік: $age');
  }
}