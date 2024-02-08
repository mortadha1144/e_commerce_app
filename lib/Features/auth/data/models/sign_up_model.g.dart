// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpModelImpl _$$SignUpModelImplFromJson(Map<String, dynamic> json) =>
    _$SignUpModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      displayName: json['displayName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$SignUpModelImplToJson(_$SignUpModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };
