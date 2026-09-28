enum Status { loading, success, error }

String label(Status s) => switch (s) {
      Status.loading => 'Loading...',
      Status.success => 'Done!',
      Status.error => 'Something went wrong',
    };

void main() {
  for (final s in Status.values) {
    print(label(s));
  }
}
