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
