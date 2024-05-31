
import 'dart:convert';

String parseResponseBody(String responseBody) {
  final parsed = json.decode(responseBody);
  return parsed.toString();
}
