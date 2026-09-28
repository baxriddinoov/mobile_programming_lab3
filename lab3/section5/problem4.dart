class Animal {
  String speak() => '...';

  @Deprecated('Use speak() instead')
  String talk() => speak();

  @deprecated
  void oldMethod() => print('old');
}

class Cat extends Animal {
  @override
  String speak() => 'Meow';
}

void main() {
  final cat = Cat();
  print(cat.speak());
  print(cat.talk());
}
