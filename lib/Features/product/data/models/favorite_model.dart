// ignore_for_file: invalid_annotation_target

import 'package:e_commerce_app/core/utils/annotations/freezed.dart';
import 'package:e_commerce_app/core/utils/annotations/json_serializable.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:e_commerce_app/core/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezedRequest
class FavoriteModel with _$FavoriteModel {
  const FavoriteModel._();
  @jsonSerializableRequest
  const factory FavoriteModel({
    required ProductId productId,
    @JsonKey(name: FirebaseFieldName.userId) required UserId likedBy,
    required DateTime date,
  }) = _FavoriteModel;
}
