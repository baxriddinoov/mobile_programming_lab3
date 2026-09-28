void inspect(Object value) {
  if (value is String) {
    print('String of length ${value.length}');
  } else if (value is int) {
    print('int, doubled = ${value * 2}');
  } else if (value is! List) {
    print('Not a list: $value');
  }
}

void main() {
  inspect('hello');
  inspect(21);
  inspect(3.14);

  Object o = 'dart';
  String s = o as String;
  print(s.toUpperCase());

  try {
    int n = o as int;
    print(n);
  } on TypeError catch (e) {
    print('Bad cast: $e');
  }
}
