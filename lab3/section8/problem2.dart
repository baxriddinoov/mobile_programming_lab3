class Vehicle {
  final String brand;
  Vehicle(this.brand);
}

class ElectricCar extends Vehicle {
  final int batteryKwh;

  ElectricCar(super.brand, this.batteryKwh);
}

void main() {
  final car = ElectricCar('Tesla', 75);
  print('${car.brand} - ${car.batteryKwh} kWh');
}
