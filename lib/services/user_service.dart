
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserService {
  final String baseUrl;

  UserService({required this.baseUrl});

  Future<String> getUserDetails(String userId) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$userId'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return 'Name: ${data['name']}, Email: ${data['email']}';
    } else {
      throw Exception('Failed to load user details');
    }
  }

  Future<bool> updateUserDetails(String userId, Map<String, dynamic> userDetails) async {
    final response = await http.put(
      Uri.parse('$baseUrl/users/$userId'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(userDetails),
    );
    return response.statusCode == 200;
  }
}
    