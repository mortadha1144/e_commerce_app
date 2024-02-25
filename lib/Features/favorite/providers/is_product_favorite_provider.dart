import 'package:e_commerce_app/Features/favorite/providers/favorite_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isProductFavoriteProvider =
    Provider.family.autoDispose<bool, int>((ref, int productId) {
  return ref.watch(favoriteProvider).any((product) => product.id == productId);
});
