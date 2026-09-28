final class Circle {
  final double r;
  const Circle(this.r);
}

base class Engine {
  void start() => print('Engine started');
}

base class V8 extends Engine {
  @override
  void start() {
    super.start();
    print('V8 roars');
  }
}

void main() => V8().start();
