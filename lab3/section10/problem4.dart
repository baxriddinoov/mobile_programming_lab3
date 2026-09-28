sealed class Result<T> {}

class Success<T> extends Result<T> {
  final T data;
  Success(this.data);
}

class Failure<T> extends Result<T> {
  final String message;
  Failure(this.message);
}

String describe<T>(Result<T> r) => switch (r) {
      Success(:final data) => 'OK: $data',
      Failure(:final message) => 'Error: $message',
    };

void main() {
  print(describe(Success(42)));
  print(describe(Failure<int>('No internet')));
}
