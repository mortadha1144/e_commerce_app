import 'package:e_commerce_app/Features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/Features/cart/data/models/add_product_to_cart_request.dart';
import 'package:e_commerce_app/Features/cart/providers/cart_repo_provider.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/presentation/providers/quantity_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_state/riverpod_state.dart';

final addProductToCartProvider =
    AsyncNotifierProvider.autoDispose<AddProductToCartNotifier, AsyncX<void>>(
  AddProductToCartNotifier.new,
);

class AddProductToCartNotifier extends AutoDisposeAsyncNotifier<AsyncX<void>>
    with AsyncXNotifierMixin<void> {
  @override
  BuildXCallback<void> build() => idle();

  @useResult
  RunXCallback<void> run(ProductModel product) {
    final userId = ref.read(userIdProvider);
    final quantity = ref.watch(quantityProvider);
    final request = AddProductToCartRequest(
      product: product,
      userId: userId!,
      quantity: quantity,
    );
    return handle(
      () async {
        return await ref.read(cartRepoProvider).addProductToCart(request);
      },
    );
  }
}
