abstract class Employee {
  final String name;
  Employee(this.name);

  double calculatePay();

  void printPayslip() => print('$name earns \$${calculatePay()}');
}

class Salaried extends Employee {
  final double monthly;
  Salaried(super.name, this.monthly);

  @override
  double calculatePay() => monthly;
}

class Hourly extends Employee {
  final double rate;
  final int hours;
  Hourly(super.name, this.rate, this.hours);

  @override
  double calculatePay() => rate * hours;
}

void main() {
  Salaried('Ali', 3000).printPayslip();
  Hourly('Vali', 12.5, 160).printPayslip();
}
