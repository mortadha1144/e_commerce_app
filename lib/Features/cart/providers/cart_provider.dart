import 'package:e_commerce_app/Features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/providers/object_preference_provider.dart';
import 'package:e_commerce_app/core/utils/shared_preference/preference_helper.dart';
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
  String get key => PrefKeys.cart;

  @override
  List<CartItemModel> build() => firstBuild([]);

  @override
  List<CartItemModel> fromJson(Map<String, dynamic> map) =>
      (map[key] as List).itemsFromJson(CartItemModel.fromJson);

  @override
  Map<String, dynamic> toJson(List<CartItemModel> value) =>
      value.toJson(key, (x) => x.toJson());

  Future<void> add(CartItemModel cartModel) =>
      update((state) => [...state, cartModel]);

  Future<void> remove(int productId) =>
      update((state) => state.where((x) => x.product.id != productId).toList());

  Future<void> clear() => update((state) => []);

  Future<void> updateQuantity(int productId, int quantity) =>
      update((state) => state
          .map((e) =>
              e.product.id == productId ? e.copyWith(quantity: quantity) : e)
          .toList());
}
