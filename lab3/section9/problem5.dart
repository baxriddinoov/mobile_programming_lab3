class Speaker {
  void speak() => print('Speaking...');
}

class Robot implements Speaker {
  @override
  void speak() => print('Beep boop');
}

mixin Talker {
  void speak() => print('Talking...');
}

class Human with Talker {}

void main() {
  Robot().speak();
  Human().speak();
}
