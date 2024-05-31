
String reverseString(String input) {
  return input.split('').reversed.join('');
}

String capitalizeString(String input) {
  if (input.isEmpty) return input;
  return input[0].toUpperCase() + input.substring(1);
}

String trimString(String input) {
  return input.trim();
}
    