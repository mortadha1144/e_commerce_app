import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.g.dart';
part 'rating_model.freezed.dart';

@Freezed(fromJson: true, toJson: true)
class RatingModel with _$RatingModel {
  const factory RatingModel({
    required double rate,
    required int count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}