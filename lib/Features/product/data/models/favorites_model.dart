import 'package:e_commerce_app/Features/product/data/models/favorite_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_model.freezed.dart';
part 'favorites_model.g.dart';

@freezed
class FavoritesModel with _$FavoritesModel {
  const FavoritesModel._();
  
 const factory FavoritesModel({
    @Default([]) List<FavoriteItemModel> favoriteItems,
  }) = _FavoritesModel;

  factory FavoritesModel.fromJson(Map<String, dynamic> json) =>
      _$FavoritesModelFromJson(json);
}