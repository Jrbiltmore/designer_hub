
String formatDate(DateTime date) {
  return '${date.year}-${date.month}-${date.day}';
}

DateTime parseDate(String dateString) {
  return DateTime.parse(dateString);
}
    