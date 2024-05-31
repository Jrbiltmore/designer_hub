
import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl;

  AuthService({required this.baseUrl});

  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode({'username': username, 'password': password}),
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<bool> logout(String token) async {
    final response = await http.post(
      Uri.parse('$baseUrl/logout'),
      headers: <String, String>{
        'Authorization': 'Bearer $token',
      },
    );
    return response.statusCode == 200;
  }
}
    