import 'dart:async';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'quantity_prvider.dart';

final addToCartProvider =
    AsyncNotifierProvider.autoDispose<AddToCartNotifier, void>(
  AddToCartNotifier.new,
);

class AddToCartNotifier extends AutoDisposeAsyncNotifier<void>  {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<void> addToCart({required ProductModel product}) async {
    final quantity = ref.read(quantityProvider);
    final productRepo = ref.read(productRepoProvider);
    state = const AsyncValue.loading();

    var result = await productRepo.addToCart(
      product: product.toJson(),
      quantity: quantity,
    );
    result.fold(
      (failure) =>
          state = AsyncValue.error(failure.errMessage, StackTrace.current),
      (success) => state = const AsyncValue.data(null),
    );
  }
}
