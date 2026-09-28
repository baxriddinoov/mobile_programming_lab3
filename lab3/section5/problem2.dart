class Validator {
  Validator._();

  static bool isEmail(String email) {
    if (email.isEmpty) {
      throw ArgumentError.value(email, 'email', 'Must not be empty');
    }
    return RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email);
  }

  static bool isAgeInRange(int age, {int min = 0, int max = 120}) {
    if (min > max) throw RangeError('min must not be greater than max');
    return age >= min && age <= max;
  }
}

void main() {
  print(Validator.isEmail('akbar@nuu.uz'));
  print(Validator.isAgeInRange(150));
}
