Future<Map<String, dynamic>> lookupUser(int id) async {
  print('Querying database...');
  await Future.delayed(const Duration(seconds: 2));
  return {'id': id, 'name': 'Akbar', 'major': 'CS'};
}

Future<void> main() async {
  final user = await lookupUser(7);
  print('Got: $user');
}
