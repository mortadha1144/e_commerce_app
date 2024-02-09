// ignore_for_file: invalid_annotation_target


import 'package:cloud_firestore/cloud_firestore.dart';
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

@Freezed(
  fromJson: false,
  toJson: true,
)
class UserCreate with _$UserCreate {
  factory UserCreate({
    required String uid,
    required String email,
    required String displayName,
    required String phoneNumber,
    required String address,
    @JsonKey(toJson: fieldValueToJson) required FieldValue createdAt,
    required String? image,
  }) = _UserCreate;
}

FieldValue fieldValueToJson(FieldValue fieldValue) => fieldValue;

@freezed
class UserData with _$UserData {
  factory UserData({
    required String uid,
    required String email,
    required String displayName,
    required String? phoneNumber,
    required String? address,
    @TimeStampJsonConverter() required DateTime createdAt,
    required String? avatar,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

class TimeStampJsonConverter extends JsonConverter<DateTime, Timestamp> {
  const TimeStampJsonConverter();

  @override
  DateTime fromJson(Timestamp json) => json.toDate();

  @override
  Timestamp toJson(DateTime object) => Timestamp.fromDate(object);
}