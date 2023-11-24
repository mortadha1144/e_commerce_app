import 'dart:async';

import 'package:e_commerce_app/Features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:testingriverpod/state/auth/providers/user_id_provider.dart';
// import 'package:testingriverpod/state/constants/firebase_collection_name.dart';
// import 'package:testingriverpod/state/constants/firebase_field_name.dart';

final isProductFavoriteProvider =
    StreamProvider.family.autoDispose<bool, ProductId>(
  (
    ref,
    ProductId productId,
  ) {
    final productRepo = ref.watch(productRepoProvider);
    
    final userId = ref.watch(userIdProvider);

    if (userId == null) {
      return Stream<bool>.value(false);
    }

    

    final controller = StreamController<bool>();

    final sub = productRepo
        .checkProductInFavorites(
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
