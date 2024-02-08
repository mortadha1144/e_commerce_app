// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['uid'] as String?,
      email: json['email'] as String?,
      displayName: json['display_name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      address: json['address'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.userId);
  writeNotNull('email', instance.email);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('address', instance.address);
  writeNotNull('image', instance.image);
  return val;
}

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
      phoneNumber: json['phoneNumber'] as String,
      address: json['address'] as String,
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
