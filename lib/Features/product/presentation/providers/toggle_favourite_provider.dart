import 'dart:async';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final toggleFavouriteProvider =
    AsyncNotifierProvider.autoDispose<ToggleFavouriteNotifier, void>(
  ToggleFavouriteNotifier.new,
);

class ToggleFavouriteNotifier extends AutoDisposeAsyncNotifier<void>  {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<void> toggleFavourite({required ProductModel product}) async {
    final productRepo = ref.read(productRepoProvider);
    state = const AsyncValue.loading();
    var result = await productRepo.toggleFavourite(
      product: product.toJson(),
    );
    result.fold(
      (failure) =>
          state = AsyncValue.error(failure.errMessage, StackTrace.current),
      (success) => state = const AsyncValue.data(null),
    );
  }
}
