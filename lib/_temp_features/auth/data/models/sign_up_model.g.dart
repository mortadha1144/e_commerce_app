// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => _SignUpModel(
      email: json['email'] as String,
      password: json['password'] as String,
      displayName: json['display_name'] as String,
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$SignUpModelToJson(_SignUpModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'display_name': instance.displayName,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
    };
