void greet(String? name) {
  if (name == null || name.isEmpty) {
    throw ArgumentError.value(name, 'name', 'Must not be null or empty');
  }
  print('Hello, $name!');
}

void main() {
  greet('Akbar');
  for (final bad in [null, '']) {
    try {
      greet(bad);
    } on ArgumentError catch (e) {
      print('Error: $e');
    }
  }
}
