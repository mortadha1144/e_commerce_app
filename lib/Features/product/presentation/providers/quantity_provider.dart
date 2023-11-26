import 'package:hooks_riverpod/hooks_riverpod.dart';

final quantityProvider =
    NotifierProvider.autoDispose<QuantityNotifier, int>(QuantityNotifier.new);

class QuantityNotifier extends AutoDisposeNotifier<int> {
  @override
  build() => 1;

  void increment() => state++;

  void decrement() {
    if (state > 1) {
      state--;
    }
  }
}
