
class ResponseModel {
  final int statusCode;
  final String message;

  ResponseModel({required this.statusCode, required this.message});

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      statusCode: json['statusCode'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'message': message,
    };
  }

  @override
  String toString() {
    return 'ResponseModel{statusCode: $statusCode, message: $message}';
  }
}
    