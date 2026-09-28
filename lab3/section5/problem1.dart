import 'dart:math';

void main() {
  double a = 1, b = -3, c = 2;

  
  double d = b * b - 4 * a * c;

  if (d >= 0) {
    double x1 = (-b + sqrt(d)) / (2 * a);
    double x2 = (-b - sqrt(d)) / (2 * a);
    print('Roots: $x1 and $x2');
  } else {
    print('No real roots');
  }
}
