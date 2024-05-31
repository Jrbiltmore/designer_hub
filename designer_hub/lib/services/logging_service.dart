
import 'dart:io';

class LoggingService {
  Future<void> log(String message) async {
    final file = File('log.txt');
    final timestamp = DateTime.now().toIso8601String();
    await file.writeAsString('[$timestamp] $message\n', mode: FileMode.append);
  }

  Future<List<String>> readLogs() async {
    final file = File('log.txt');
    if (await file.exists()) {
      return await file.readAsLines();
    } else {
      return [];
    }
  }
}
    