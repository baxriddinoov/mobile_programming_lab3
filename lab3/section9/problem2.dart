mixin Flyable {
  void fly() => print('Flying high!');
}

class Bird with Flyable {
  final String name;
  Bird(this.name);
}

void main() {
  Bird('Eagle').fly();
}
