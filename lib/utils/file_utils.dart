
import 'dart:io';

Future<String> readFile(String path) async {
  final file = File(path);
  return await file.readAsString();
}

Future<void> writeFile(String path, String content) async {
  final file = File(path);
  await file.writeAsString(content);
}

Future<void> appendToFile(String path, String content) async {
  final file = File(path);
  await file.writeAsString(content, mode: FileMode.append);
}
    