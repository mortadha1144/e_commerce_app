import 'package:e_commerce_app/Features/cart/data/models/cart_model.dart';
import 'package:e_commerce_app/core/utils/providers/object_preference_provider.dart';
import 'package:e_commerce_app/core/utils/shared_preference/helper.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cashedCardProvider =
    AutoDisposeNotifierProvider<CashedCardNotifier, List<CartModel>>(
  CashedCardNotifier.new,
);

class CashedCardNotifier extends AutoDisposeNotifier<List<CartModel>>
    with ObjectPreferenceProvider {
  @override
  String get key => PrefKeys.cart;

  @override
  List<CartModel> build() => firstBuild([]);

  @override
  List<CartModel> fromJson(Map<String, dynamic> map) =>
      List<CartModel>.from(map[key].map((x) => CartModel.fromJson(x)));

  @override
  Map<String, dynamic> toJson(List<CartModel> value) =>
      {key: value.map((x) => x.toJson()).toList()};

  Future<void> add(CartModel cartModel) =>
      update((state) => [...state, cartModel]);

  Future<void> remove(int productId) => update(
        (state) => state..removeWhere((element) => element.product.id == productId),
      );

  Future<void> clear() => update((state) => []);

  bool contains(int productId) => state.any((x) => x.product.id == productId);
}
