abstract interface class Priced {
  double get price;
  double priceWithTax(double rate);
}

enum Coffee implements Priced {
  espresso(2.5),
  latte(3.5),
  cappuccino(3.8);

  const Coffee(this.price);

  @override
  final double price;

  @override
  double priceWithTax(double rate) => price * (1 + rate);
}

void main() {
  for (final c in Coffee.values) {
    print('${c.name}: ${c.priceWithTax(0.12).toStringAsFixed(2)}');
  }
}
