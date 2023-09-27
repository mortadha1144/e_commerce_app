import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuantityNorifier extends Notifier<int> {
  @override
  build() {
    return 1;
  }

  void increment() {
    state++;
  }

  void decrement() {
    if (state > 1) {
      state--;
    }
  }
}
