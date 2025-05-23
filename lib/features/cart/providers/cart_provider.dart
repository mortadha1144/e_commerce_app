import 'package:e_commerce_app/core/data/shared_preferences/preferences.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/data/providers/object_preference_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final totalPricesProvider = Provider.autoDispose((ref) {
  final cartItems = ref.watch(cartProvider);
  return double.parse(
    cartItems
        .fold<double>(
          0,
          (previousValue, element) =>
              previousValue + (element.product.price * element.quantity),
        )
        .toStringAsFixed(2),
  );
});

final cartProvider =
    AutoDisposeNotifierProvider<CartNotifier, List<CartItemModel>>(
  CartNotifier.new,
);

class CartNotifier extends AutoDisposeNotifier<List<CartItemModel>>
    with ObjectPreferenceProvider {
  @override
  @protected
  String get key => Preferences.cart;

  @override
  List<CartItemModel> build() => firstBuild([]);

  @override
  List<CartItemModel> fromJson(Map<String, dynamic> map) =>
      (map[key] as List).itemsFromJson(CartItemModel.fromJson);

  @override
  Map<String, dynamic> toJson(List<CartItemModel> value) =>
      value.toJson(key, (x) => x.toJson());

  Future<void> add(CartItemModel cartModel) {
    final isProductInCart =
        state.any((x) => x.product.id == cartModel.product.id);
    if (isProductInCart) {
      final currentQuantity = state
          .firstWhere((x) => x.product.id == cartModel.product.id)
          .quantity;
      return updateQuantity(
        cartModel.product.id,
        currentQuantity + cartModel.quantity,
      );
    }
    return update((state) => [...state, cartModel]);
  }

  Future<void> remove(int productId) =>
      update((state) => state.where((x) => x.product.id != productId).toList());

  Future<void> clear() => update((state) => []);

  Future<void> updateQuantity(int productId, int quantity) =>
      update((state) => state
          .map((e) =>
              e.product.id == productId ? e.copyWith(quantity: quantity) : e)
          .toList());
}
