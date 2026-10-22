import 'student.dart';

class StudentManager {
  final List<Student> _students = [];

  void addStudent(Student student) {
    _students.add(student);
    print('Студента ${student.name} додано.');
  }

  void displayStudents() {
    if (_students.isEmpty) {
      print('Список студентів порожній.');
      return;
    }

    for (Student student in _students) {
      student.displayInfo();
      print('--------------------');
    }
  }

  Student? findStudent(String name) {
    for (Student student in _students) {
      if (student.name == name) {
        return student;
      }
    }

    return null;
  }

  bool updateStudentGrade(String name, double newGrade) {
    Student? student = findStudent(name);

    if (student == null) {
      print('Студента $name не знайдено.');
      return false;
    }

    double oldGrade = student.averageGrade;
    student.updateAverageGrade(newGrade);

    if (student.averageGrade == oldGrade) {
      return false;
    }

    print('Середній бал студента $name оновлено.');
    return true;
  }

  bool removeStudent(String name) {
    Student? student = findStudent(name);

    if (student == null) {
      print('Студента $name не знайдено.');
      return false;
    }

    _students.remove(student);
    print('Студента $name видалено.');
    return true;
  }
}