
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.g.dart';
part 'category_model.freezed.dart';

@Freezed(fromJson: true, toJson: false)
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
    required String image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}