
class LogEntry {
  final DateTime timestamp;
  final String message;

  LogEntry({required this.timestamp, required this.message});

  factory LogEntry.fromJson(Map<String, dynamic> json) {
    return LogEntry(
      timestamp: DateTime.parse(json['timestamp']),
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp.toIso8601String(),
      'message': message,
    };
  }

  @override
  String toString() {
    return 'LogEntry{timestamp: $timestamp, message: $message}';
  }
}
    