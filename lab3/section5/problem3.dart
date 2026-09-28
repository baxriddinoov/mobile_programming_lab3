class TempConverter {
  double toFahrenheit(double celsius) => celsius * 9 / 5 + 32;

  double toCelsius(double fahrenheit) => (fahrenheit - 32) * 5 / 9;
}

void main() {
  final t = TempConverter();
  print(t.toFahrenheit(100));
  print(t.toCelsius(212));
}
