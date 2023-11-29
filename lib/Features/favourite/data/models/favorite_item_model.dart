// ignore_for_file: invalid_annotation_target

import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/core/utils/services/convertor/timestamp_serializer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_item_model.freezed.dart';
part 'favorite_item_model.g.dart';

@freezed
class FavoriteItemModel with _$FavoriteItemModel {

   factory FavoriteItemModel({
    required ProductModel product,
    required DateTime date,
  }) = _FavoriteItemModel;

  factory FavoriteItemModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteItemModelFromJson(json);
}
