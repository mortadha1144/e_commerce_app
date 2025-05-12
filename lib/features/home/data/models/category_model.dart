
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.g.dart';
part 'category_model.freezed.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  @JsonSerializable(explicitToJson: true)
  const factory CategoryModel({
    required int id,
    required String name,
    required String image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}