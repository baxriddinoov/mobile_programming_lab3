enum Setting<T> {
  volume<int>(50),
  username<String>('guest'),
  darkMode<bool>(false);

  const Setting(this.defaultValue);
  final T defaultValue;

  static Setting<dynamic>? find(String name) =>
      values.where((s) => s.name == name).firstOrNull;
}

void main() {
  print(Setting.volume.defaultValue + 10);
  print(Setting.username.defaultValue.toUpperCase());
  print(Setting.find('darkMode'));
  print(Setting.find('zzz'));
}
