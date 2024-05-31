
import 'package:http/http.dart' as http;

class DataService {
  final String baseUrl;

  DataService({required this.baseUrl});

  Future<http.Response> getData(String endpoint) {
    return http.get(Uri.parse('$baseUrl/$endpoint'));
  }
}
