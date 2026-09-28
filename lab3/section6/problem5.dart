class UserDto {
  final int id;
  final String name;

  const UserDto({required this.id, required this.name});

  UserDto copyWith({int? id, String? name}) =>
      UserDto(id: id ?? this.id, name: name ?? this.name);

  @override
  String toString() => 'UserDto($id, $name)';
}

void main() {
  const a = UserDto(id: 1, name: 'Ali');
  const b = UserDto(id: 1, name: 'Ali');
  print(identical(a, b));

  final c = a.copyWith(name: 'Vali');
  print(c);
}
