import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  final double r;
  Circle(this.r);
  @override
  double area() => pi * r * r;
}

class Rectangle extends Shape {
  final double w, h;
  Rectangle(this.w, this.h);
  @override
  double area() => w * h;
}

void main() {
  final shapes = <Shape>[Circle(2), Rectangle(3, 4)];
  for (final s in shapes) {
    print('${s.runtimeType}: ${s.area().toStringAsFixed(2)}');
  }
}
