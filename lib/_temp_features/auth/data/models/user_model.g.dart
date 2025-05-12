// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCreate _$UserCreateFromJson(Map<String, dynamic> json) => _UserCreate(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['display_name'] as String,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      createdAt: const FieldValueSerializer().fromJson(json['created_at']),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UserCreateToJson(_UserCreate instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'display_name': instance.displayName,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.address case final value?) 'address': value,
      if (const FieldValueSerializer().toJson(instance.createdAt)
          case final value?)
        'created_at': value,
      if (instance.image case final value?) 'image': value,
    };

_UserEdit _$UserEditFromJson(Map<String, dynamic> json) => _UserEdit(
      email: json['email'] as String?,
      displayName: json['display_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UserEditToJson(_UserEdit instance) => <String, dynamic>{
      if (instance.email case final value?) 'email': value,
      if (instance.displayName case final value?) 'display_name': value,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.address case final value?) 'address': value,
      if (instance.image case final value?) 'image': value,
    };

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['display_name'] as String,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      createdAt: const TimeStampJsonConverter()
          .fromJson(json['created_at'] as Timestamp),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'display_name': instance.displayName,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.address case final value?) 'address': value,
      'created_at': const TimeStampJsonConverter().toJson(instance.createdAt),
      if (instance.image case final value?) 'image': value,
    };
