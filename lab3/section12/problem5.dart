void loadData() => throw FormatException('Corrupted file');

void service() {
  try {
    loadData();
  } on FormatException catch (e) {
    print('[service] logging: $e');
    rethrow;
  }
}

void main() {
  try {
    service();
  } catch (e) {
    print('[main] final handler got: $e');
  }
}
