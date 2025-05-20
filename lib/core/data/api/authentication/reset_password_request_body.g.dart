// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPasswordRequestBody _$ResetPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _ResetPasswordRequestBody(
      phoneNumber: json['phoneNumber'] as String,
      resetToken: json['resetToken'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$ResetPasswordRequestBodyToJson(
        _ResetPasswordRequestBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'resetToken': instance.resetToken,
      'newPassword': instance.newPassword,
    };
