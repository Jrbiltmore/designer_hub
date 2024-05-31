
double limitResize(double value, double min, double max) {
  return value.clamp(min, max);
}

double adjustResize(double value, double increment) {
  return value + increment;
}
    