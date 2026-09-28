void main() {
  final inputs = ['42', 'abc'];

  for (final text in inputs) {
    try {
      final n = int.parse(text);
      print(100 ~/ (n - 42));
    } on FormatException {
      print('"$text" is not a number');
    } on UnsupportedError {
      print('Division by zero happened');
    } catch (e) {
      print('Something unexpected: $e');
    }
  }
}
