// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequestBody _$RegisterRequestBodyFromJson(Map<String, dynamic> json) =>
    _RegisterRequestBody(
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$RegisterRequestBodyToJson(
        _RegisterRequestBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'fullName': instance.fullName,
      if (instance.email case final value?) 'email': value,
      if (instance.address case final value?) 'address': value,
    };
