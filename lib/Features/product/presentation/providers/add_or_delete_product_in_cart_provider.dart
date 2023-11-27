import 'package:e_commerce_app/Features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/Features/cart/data/models/add_or_delete_product_in_cart_request.dart';
import 'package:e_commerce_app/Features/cart/providers/cart_repo_provider.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/presentation/providers/quantity_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_state/riverpod_state.dart';

final addOrDeleteProductInCartProvider =
    AsyncNotifierProvider.autoDispose<AddOrDeleteProductInCartNotifier, AsyncX<void>>(
  AddOrDeleteProductInCartNotifier.new,
);

class AddOrDeleteProductInCartNotifier extends AutoDisposeAsyncNotifier<AsyncX<void>>
    with AsyncXNotifierMixin<void> {
  @override
  BuildXCallback<void> build() => idle();

  @useResult
  RunXCallback<void> run(AddOrDeleteProductInCartRequest request) => handle(
        () async {
          return await ref
              .read(cartRepoProvider)
              .addOrDeleteProductInCart(request);
        },
      );
}
