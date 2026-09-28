enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  for (final d in Day.values) {
    print('${d.index}: ${d.name}');
  }
}
