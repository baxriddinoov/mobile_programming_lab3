abstract interface class DiscountStrategy {
  double apply(double price);
}

class NoDiscount implements DiscountStrategy {
  @override
  double apply(double price) => price;
}

class PercentDiscount implements DiscountStrategy {
  final double percent;
  PercentDiscount(this.percent);
  @override
  double apply(double price) => price * (1 - percent / 100);
}

class FixedDiscount implements DiscountStrategy {
  final double amount;
  FixedDiscount(this.amount);
  @override
  double apply(double price) => (price - amount).clamp(0, double.infinity);
}

class Checkout {
  DiscountStrategy strategy;
  Checkout(this.strategy);
  double total(double price) => strategy.apply(price);
}

void main() {
  final c = Checkout(NoDiscount());
  print(c.total(100));
  c.strategy = PercentDiscount(20);
  print(c.total(100));
  c.strategy = FixedDiscount(30);
  print(c.total(100));
}
