enum Day { monday, tuesday, friday }

void main() {
  print(Day.values.byName('friday'));

  try {
    Day.values.byName('funday');
  } on ArgumentError catch (e) {
    print('Invalid day: ${e.message}');
  }

  final map = Day.values.asNameMap();
  print(map['tuesday']);
  print(map['nope'] ?? 'not found');
}
