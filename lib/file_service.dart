import 'dart:io';

class FileService {
  Future<void> writeData(String filePath, String content) async {
    try {
      File file = File(filePath);
      await file.writeAsString(content);
      print('Дані успішно записано у файл.');
    } catch (error) {
      print('Помилка запису у файл: $error');
    }
  }

  Future<String?> readData(String filePath) async {
    try {
      File file = File(filePath);

      if (!await file.exists()) {
        print('Файл не знайдено.');
        return null;
      }

      String content = await file.readAsString();
      print('Дані успішно прочитано з файлу.');

      return content;
    } catch (error) {
      print('Помилка читання файлу: $error');
      return null;
    }
  }
}