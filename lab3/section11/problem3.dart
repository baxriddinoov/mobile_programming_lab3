import 'dart:async';

void main() {
  int count = 0;
  late StreamSubscription<int> sub;

  sub = Stream.periodic(const Duration(seconds: 1), (i) => i).listen((tick) {
    count++;
    print('Tick #$count (value $tick)');
    if (count == 5) {
      sub.cancel();
      print('Cancelled after 5 emissions');
    }
  });
}
