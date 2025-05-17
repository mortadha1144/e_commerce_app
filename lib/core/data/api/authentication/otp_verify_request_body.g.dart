// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpVerifyRequestBody _$OtpVerifyRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _OtpVerifyRequestBody(
      phoneNumber: json['phoneNumber'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$OtpVerifyRequestBodyToJson(
        _OtpVerifyRequestBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'code': instance.code,
    };
