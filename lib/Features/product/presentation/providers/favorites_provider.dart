import 'package:e_commerce_app/Features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/Features/cart/data/models/cart_model.dart';
import 'package:e_commerce_app/Features/product/data/models/favorite_item_model.dart';
import 'package:e_commerce_app/Features/product/data/models/favorites_model.dart';
import 'package:e_commerce_app/core/utils/providers/object_preference_provider.dart';
import 'package:e_commerce_app/core/utils/shared_preference/helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final favoritesProvider =
    AutoDisposeNotifierProvider<FavoritesNotifier, FavoritesModel>(
  FavoritesNotifier.new,
);

class FavoritesNotifier extends AutoDisposeNotifier<FavoritesModel>
    with ObjectPreferenceProvider {
  @override
  String get key => PrefKeys.favoriteItems;

  @override
  FavoritesModel build() => firstBuild(const FavoritesModel());

  @override
  FavoritesModel fromJson(Map<String, dynamic> map) =>
      FavoritesModel.fromJson(map);

  @override
  Map<String, dynamic> toJson(FavoritesModel value) => value.toJson();

  Future<void> add(FavoriteItemModel favoriteItemModel) =>
      update((state) => state.copyWith(
          favoriteItems: [...state.favoriteItems, favoriteItemModel]));

  Future<void> remove(int productId) =>
      update((state) => state.copyWith(
          favoriteItems: state.favoriteItems
              .where((x) => x.product.id != productId)
              .toList()));

  Future<void> clear() => update((state) => state.copyWith(favoriteItems: []));


}
