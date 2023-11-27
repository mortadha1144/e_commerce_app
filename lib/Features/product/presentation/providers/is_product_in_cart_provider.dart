import 'dart:async';
import 'package:e_commerce_app/Features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/Features/cart/providers/cart_repo_provider.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isProductInCartProvider =
    StreamProvider.family.autoDispose<bool, ProductId>(
  (
    ref,
    ProductId productId,
  ) {
    final cartRepo = ref.watch(cartRepoProvider);

    final userId = ref.watch(userIdProvider);

    if (userId == null) {
      return Stream<bool>.value(false);
    }

    final controller = StreamController<bool>();

    final sub = cartRepo
        .isProductInCart(
      productId: productId,
      userId: userId,
    )
        .listen(
      (snapshot) {
        if (snapshot.exists) {
          controller.add(true);
        } else {
          controller.add(false);
        }
      },
    );

    ref.onDispose(() {
      sub.cancel();
      controller.close();
    });

    return controller.stream;
  },
);
