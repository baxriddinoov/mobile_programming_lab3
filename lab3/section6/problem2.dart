class Student {
  final String name;
  final int age;

  Student(String name, int age)
      : assert(name.isNotEmpty, 'Name cannot be empty'),
        this.name = name,
        age = _checkAge(age);

  static int _checkAge(int a) {
    if (a < 0 || a > 120) throw RangeError.range(a, 0, 120, 'age');
    return a;
  }
}

void main() {
  print(Student('Ali', 19).age);
  try {
    Student('Vali', 200);
  } catch (e) {
    print(e);
  }
}
