// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(includeIfNull: false)
  const factory UserModel({
    @JsonKey(name: FirebaseFieldName.userId) String? userId,
    @JsonKey(name: FirebaseFieldName.email) String? email,
    @JsonKey(name: FirebaseFieldName.displayName) String? displayName,
    @JsonKey(name: FirebaseFieldName.phoneNumber) String? phoneNumber,
    @JsonKey(name: FirebaseFieldName.address) String? address,
    @JsonKey(name: FirebaseFieldName.image) String? image,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
