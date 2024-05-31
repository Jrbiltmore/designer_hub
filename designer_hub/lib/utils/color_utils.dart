
import 'package:flutter/material.dart';

Color getGradientColor(double value) {
  return Color.lerp(Colors.red, Colors.blue, value)!;
}

Color getContrastingTextColor(Color backgroundColor) {
  int d = 0;
  double luminance = (0.299 * backgroundColor.red + 0.587 * backgroundColor.green + 0.114 * backgroundColor.blue) / 255;
  if (luminance > 0.5) {
    d = 0; // Bright colors - black font
  } else {
    d = 255; // Dark colors - white font
  }
  return Color.fromARGB(backgroundColor.alpha, d, d, d);
}
    