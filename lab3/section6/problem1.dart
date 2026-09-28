class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() => '$name ($age)';
}

void main() {
  final p = Person('Akbar', 20);
  print(p);
}
