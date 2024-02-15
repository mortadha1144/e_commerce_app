// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$UserCreateImplToJson(_$UserCreateImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'createdAt': fieldValueToJson(instance.createdAt),
      'image': instance.image,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      address: json['address'] as String?,
      createdAt: const TimeStampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'createdAt': const TimeStampJsonConverter().toJson(instance.createdAt),
      'avatar': instance.avatar,
    };
