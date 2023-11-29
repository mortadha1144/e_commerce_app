import 'package:e_commerce_app/Features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/Features/cart/data/models/cart_model.dart';
import 'package:e_commerce_app/core/utils/providers/object_preference_provider.dart';
import 'package:e_commerce_app/core/utils/shared_preference/helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProvider = AutoDisposeNotifierProvider<CartNotifier, CartModel>(
  CartNotifier.new,
);

class CartNotifier extends AutoDisposeNotifier<CartModel>
    with ObjectPreferenceProvider {
  @override
  String get key => PrefKeys.cart;

  @override
  CartModel build() => firstBuild(const CartModel());

  @override
  CartModel fromJson(Map<String, dynamic> map) => CartModel.fromJson(map);

  @override
  Map<String, dynamic> toJson(CartModel value) => value.toJson();

  Future<void> add(CartItemModel cartModel) => update(
      (state) => state.copyWith(cartItems: [...state.cartItems, cartModel]));

  Future<void> remove(int productId) => update((state) => state.copyWith(
      cartItems:
          state.cartItems.where((x) => x.product.id != productId).toList()));

  Future<void> clear() => update((state) => state.copyWith(cartItems: []));

  bool contains(int productId) =>
      state.cartItems.any((x) => x.product.id == productId);
}
