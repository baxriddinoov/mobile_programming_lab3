void level3() => throw StateError('Boom in level 3');
void level2() => level3();
void level1() => level2();

void main() {
  try {
    level1();
  } catch (e, stackTrace) {
    print('Error: $e');
    print('Stack trace:\n$stackTrace');
  }

  print(StackTrace.current);
}
