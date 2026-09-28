abstract interface class DBConnector {
  void connect();
  List<Map<String, dynamic>> query(String sql);
  void close();
}

class MySQLConnector implements DBConnector {
  @override
  void connect() => print('Connected to MySQL');

  @override
  List<Map<String, dynamic>> query(String sql) {
    print('Running: $sql');
    return [
      {'id': 1, 'name': 'Ali'}
    ];
  }

  @override
  void close() => print('Connection closed');
}

void main() {
  DBConnector db = MySQLConnector();
  db.connect();
  print(db.query('select * from users'));
  db.close();
}
