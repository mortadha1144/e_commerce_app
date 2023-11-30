import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'cart_provider.dart';

final isProductInCartProvider = Provider.family.autoDispose<bool,int>((ref, int productId) {
  return ref.watch(cartProvider).any((x) => x.product.id == productId);
});