class Animal {
  void makeSound() => print('Some generic sound');
}

class Dog extends Animal {
  @override
  void makeSound() => print('Woof!');
}

void main() {
  Animal a = Dog();
  a.makeSound();
}
