// ignore_for_file: invalid_annotation_target


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/utils/constants/firebase_field_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';


@Freezed(
  fromJson: false,
  toJson: true,
)
class UserCreate with _$UserCreate {
  factory UserCreate({
    required String uid,
    required String email,
    required String displayName,
    required String? phoneNumber,
    required String? address,
    @JsonKey(toJson: fieldValueToJson) required FieldValue createdAt,
    required String? image,
  }) = _UserCreate;
}

FieldValue fieldValueToJson(FieldValue fieldValue) => fieldValue;

@freezed
class UserData with _$UserData {
  const UserData._();

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

  factory UserData.fromPrefJson(Map<String, dynamic> json) {
    // convert ISO 8601 string to DateTime
    json[FirebaseFieldName.createdAt] =Timestamp.fromDate(DateTime.parse(json[FirebaseFieldName.createdAt] as String));
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