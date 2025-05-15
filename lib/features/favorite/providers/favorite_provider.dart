import 'package:e_commerce_app/core/data/shared_preferences/preferences.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/data/providers/object_preference_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final favoriteProvider =
    AutoDisposeNotifierProvider<FavoriteNotifier, List<ProductModel>>(
  FavoriteNotifier.new,
);

class FavoriteNotifier extends AutoDisposeNotifier<List<ProductModel>>
    with ObjectPreferenceProvider {
  @override
  @protected
  String get key => Preferences.favorite;

  @override
  List<ProductModel> build() => firstBuild([]);

  @override
  List<ProductModel> fromJson(Map<String, dynamic> map) =>
      (map[key] as List).itemsFromJson(ProductModel.fromJson);

  @override
  Map<String, dynamic> toJson(List<ProductModel> value) =>
      value.toJson(key, (x) => x.toJson());

  Future<void> add(ProductModel product) =>
      update((state) => [...state, product]);

  Future<void> remove(int productId) => update(
      (state) => state.where((product) => product.id != productId).toList());

  Future<void> clear() => update((state) => []);

  // toggle favorite
  Future<void> toggle(ProductModel product) async {
    if (state.any((x) => x.id == product.id)) {
      await remove(product.id);
    } else {
      await add(product);
    }
  }
}
