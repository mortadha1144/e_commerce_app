
import 'package:e_commerce_app/Features/home/data/repos/product_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productProvider = FutureProvider.family.autoDispose(
  (ref, String productId) async {
    return ref
        .watch(productRepoProvider)
        .checkProductInFavourites(productId: productId);
  },
);
