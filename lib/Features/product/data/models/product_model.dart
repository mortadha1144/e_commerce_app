

import 'package:e_commerce_app/Features/home/data/models/rating_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.g.dart';
part 'product_model.freezed.dart';

@Freezed(fromJson: true, toJson: true)
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required RatingModel rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
