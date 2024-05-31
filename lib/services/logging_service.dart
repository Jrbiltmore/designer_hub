
import 'dart:io';

class LoggingService {
  Future<void> log(String message) async {
    final file = File('log.txt');
    final timestamp = DateTime.now().toIso8601String();
    await file.writeAsString('[$timestamp] $message\n', mode: FileMode.append);
  }

  Future<String> readLogs() async {
    final file = File('log.txt');
    return await file.readAsString();
  }

  Future<void> clearLogs() async {
    final file = File('log.txt');
    await file.writeAsString('');
  }
}
    