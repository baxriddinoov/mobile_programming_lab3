mixin Walker {
  void walk() => print('Waddling on land');
}

mixin Swimmer {
  void swim() => print('Paddling in the pond');
}

mixin Flyable {
  void fly() => print('Flapping in the sky');
}

class Duck with Walker, Swimmer, Flyable {}

void main() {
  final d = Duck();
  d.walk();
  d.swim();
  d.fly();
  print(d is Swimmer);
}
