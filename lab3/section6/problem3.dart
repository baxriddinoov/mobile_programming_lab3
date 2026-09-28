class Logger {
  static final Logger _instance = Logger._internal();

  Logger._internal();

  factory Logger() => _instance;

  void log(String msg) => print('[LOG] $msg');
}

void main() {
  final a = Logger();
  final b = Logger();
  print(identical(a, b));
  a.log('Hello');
}
