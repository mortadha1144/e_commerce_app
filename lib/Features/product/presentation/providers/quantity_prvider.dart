import 'package:hooks_riverpod/hooks_riverpod.dart';

final quantityProvider =
    NotifierProvider.autoDispose<QuantityNorifier, int>(QuantityNorifier.new);

class QuantityNorifier extends AutoDisposeNotifier<int> {
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
