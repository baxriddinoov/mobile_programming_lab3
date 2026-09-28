Future<void> main() async {
  final stream = Stream<int>.fromFutures([
    Future.value(1),
    Future.error(Exception('Network glitch')),
    Future.value(3),
    Future.value(4),
  ]);

  stream
      .handleError((Object e) => print('Handled: $e'))
      .map((n) => n * 2)
      .listen(
        (v) => print('Value: $v'),
        onDone: () => print('Stream finished'),
      );
}
