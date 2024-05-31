
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/services/api_service.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  test('fetchData returns data', () async {
    final apiService = ApiService(baseUrl: 'https://jsonplaceholder.typicode.com');
    final client = MockClient((request) async {
      return http.Response('{"title": "Test"}', 200);
    });
    final response = await apiService.fetchData('posts/1');
    expect(response.statusCode, 200);
  });
}
