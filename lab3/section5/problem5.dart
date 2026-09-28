library;

class Item {
  final String name;

  final double price;

  Item(this.name, this.price) {
    if (price < 0) throw ArgumentError.value(price, 'price', 'Cannot be negative');
  }
}

class ShoppingCart {
  final List<Item> _items = [];

  void add(Item item) => _items.add(item);

  int get count => _items.length;

  double get total => _items.fold(0.0, (sum, i) => sum + i.price);
}

void main() {
  final cart = ShoppingCart()
    ..add(Item('Pen', 1.5))
    ..add(Item('Notebook', 4.0));
  print('${cart.count} items, total = ${cart.total}');
}
