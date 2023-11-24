import 'dart:async';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final toggleFavoriteProvider =
    AsyncNotifierProvider.autoDispose<ToggleFavoriteNotifier, void>(
  ToggleFavoriteNotifier.new,
);

class ToggleFavoriteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<void> toggleFavorite({required ProductModel product}) async {
    final productRepo = ref.read(productRepoProvider);
    state = const AsyncValue.loading();
    var result = await productRepo.toggleFavorite(
      product: product.toJson(),
    );
    result.fold(
      (failure) =>
          state = AsyncValue.error(failure.errMessage, StackTrace.current),
      (success) => state = const AsyncValue.data(null),
    );
  }
}
