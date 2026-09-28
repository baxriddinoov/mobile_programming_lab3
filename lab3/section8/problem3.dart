import 'dart:math';

abstract class Shape {
  double area();
}

abstract class Polygon extends Shape {
  int get sides;
  void describe() => print('Polygon with $sides sides, area = ${area().toStringAsFixed(2)}');
}

class Triangle extends Polygon {
  final double a, b, c;
  Triangle(this.a, this.b, this.c);

  @override
  int get sides => 3;

  @override
  double area() {
    final s = (a + b + c) / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }
}

void main() {
  Triangle(3, 4, 5).describe();
}
