class Thermostat {
  double _celsius = 20;

  double get celsius => _celsius;

  set celsius(double value) {
    if (value < 10 || value > 30) {
      throw ArgumentError('Temperature must be between 10 and 30');
    }
    _celsius = value;
  }

  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  final t = Thermostat();
  t.celsius = 25;
  print(t.fahrenheit);
  try {
    t.celsius = 50;
  } catch (e) {
    print(e);
  }
}
