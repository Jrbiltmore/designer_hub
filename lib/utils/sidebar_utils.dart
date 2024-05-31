
import 'package:flutter/material.dart';

void navigateToPage(BuildContext context, String page) {
  Navigator.pushNamed(context, page);
}

void closeSidebar(BuildContext context) {
  Navigator.pop(context);
}
    