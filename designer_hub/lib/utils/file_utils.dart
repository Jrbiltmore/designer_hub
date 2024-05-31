
import 'dart:io';

Future<String> readFile(String path) async {
  final file = File(path);
  return await file.readAsString();
}
