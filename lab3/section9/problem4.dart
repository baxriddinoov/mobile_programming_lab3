class Vehicle {
  int fuel = 100;
}

mixin Turbo on Vehicle {
  void boost() {
    fuel -= 20;
    print('BOOST! Fuel left: $fuel');
  }
}

class SportsCar extends Vehicle with Turbo {}

void main() {
  SportsCar().boost();
}
