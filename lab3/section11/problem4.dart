Future<void> main() async {
  final source = Stream.fromIterable([1, 1, 2, 2, 3, 4, 4, 5, 6]);

  final result = source
      .where((n) => n.isEven)
      .map((n) => n * 10)
      .distinct();

  await for (final v in result) {
    print(v);
  }
}
