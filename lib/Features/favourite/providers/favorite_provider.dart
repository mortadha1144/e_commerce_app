import 'package:e_commerce_app/Features/favourite/data/models/favorite_item_model.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/providers/object_preference_provider.dart';
import 'package:e_commerce_app/core/utils/shared_preference/preference_helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final favoriteProvider =
    AutoDisposeNotifierProvider<FavoriteNotifier, List<FavoriteItemModel>>(
  FavoriteNotifier.new,
);

class FavoriteNotifier extends AutoDisposeNotifier<List<FavoriteItemModel>>
    with ObjectPreferenceProvider {
  @override
  String get key => PrefKeys.favorite;

  @override
  List<FavoriteItemModel> build() => firstBuild([]);

  @override
  List<FavoriteItemModel> fromJson(Map<String, dynamic> map) =>
      (map[key] as List).itemsFromJson(FavoriteItemModel.fromJson);

  @override
  Map<String, dynamic> toJson(List<FavoriteItemModel> value) => value.toJson(key, (x) => x.toJson());

  Future<void> add(FavoriteItemModel favoriteItemModel) =>
      update((state) => [...state, favoriteItemModel]);

  Future<void> remove(int productId) => update((state) => state.where((x) => x.product.id != productId).toList());

  Future<void> clear() => update((state) => []);
}
