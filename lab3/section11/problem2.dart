Future<String> task(String name, int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
  return '$name finished';
}

Future<void> main() async {
  final sw = Stopwatch()..start();

  final results = await Future.wait([
    task('A', 2),
    task('B', 1),
    task('C', 3),
  ]);

  print(results);
  print('Total: ${sw.elapsed.inSeconds}s');
}
