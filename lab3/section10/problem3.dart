class Repository<T> {
  final List<T> _items = [];

  void add(T item) => _items.add(item);

  List<T> get all => List.unmodifiable(_items);

  T? firstWhereOrNull(bool Function(T) test) {
    for (final item in _items) {
      if (test(item)) return item;
    }
    return null;
  }
}

class User {
  final String name;
  User(this.name);
}

void main() {
  final users = Repository<User>()..add(User('Ali'))..add(User('Vali'));
  print(users.firstWhereOrNull((u) => u.name == 'Vali')?.name);

  final numbers = Repository<int>()..add(1)..add(2);
  print(numbers.all);
}
