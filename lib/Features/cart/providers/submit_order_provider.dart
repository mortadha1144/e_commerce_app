import 'package:e_commerce_app/core/data/network/async_state.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/cart/data/models/product_order.dart';
import 'package:e_commerce_app/features/cart/data/repos/cart_repo.dart';
import 'package:e_commerce_app/features/cart/providers/cart_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final submitOrderProvider =
    AutoDisposeNotifierProvider<SubmitOrderNotifier, AsyncState<void>>(
  SubmitOrderNotifier.new,
);

class SubmitOrderNotifier extends AutoDisposeNotifier<AsyncState<void>>
    with AsyncStateMixin<void> {
  @override
  AsyncState<void> build() => idle();

  AsyncStateCallback<void> run(List<ProductOrder> items) => handle(
        () async {
          await ref.read(cartRepoProvider).submitOrder(items: items);
          ref.read(cartProvider.notifier).clear();
        },
      );
}
