// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/data/services/convertor/timestamp_serializer.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserCreate with _$UserCreate {
  @JsonSerializable(
    converters: [FieldValueSerializer()],
  )
  const factory UserCreate({
    required String uid,
    required String email,
    required String displayName,
    required String? phoneNumber,
    required String? address,
    required FieldValue createdAt,
    required String? image,
  }) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);
}

@freezed
abstract class UserEdit with _$UserEdit {
  const factory UserEdit({
    String? email,
    String? displayName,
    String? phoneNumber,
    String? address,
    String? image,
  }) = _UserEdit;

  factory UserEdit.fromJson(Map<String, dynamic> json) =>
      _$UserEditFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  const UserData._();
  @JsonSerializable(
    converters: [TimeStampJsonConverter()],
  )
  factory UserData({
    required String uid,
    required String email,
    required String displayName,
    required String? phoneNumber,
    required String? address,
    @TimeStampJsonConverter() required DateTime createdAt,
    required String? image,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  factory UserData.fromPrefJson(Map<String, dynamic> json) {
    // convert ISO 8601 string to DateTime
    json[FirebaseFieldName.createdAt] = Timestamp.fromDate(
        DateTime.parse(json[FirebaseFieldName.createdAt] as String));
    return UserData.fromJson(json);
  }

  Map<String, dynamic> toPrefJson() {
    final json = toJson();
    // convert TimeStamp to ISO 8601 string
    json[FirebaseFieldName.createdAt] = createdAt.toIso8601String();
    return json;
  }
}

class TimeStampJsonConverter extends JsonConverter<DateTime, Timestamp> {
  const TimeStampJsonConverter();

  @override
  DateTime fromJson(Timestamp json) => json.toDate();

  @override
  Timestamp toJson(DateTime object) => Timestamp.fromDate(object);
}
