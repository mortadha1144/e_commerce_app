// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _ApiResponse<T>(
      message: json['message'] as String?,
      success: json['success'] as bool,
      payload: fromJsonT(json['payload']),
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  _ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      if (instance.message case final value?) 'message': value,
      'success': instance.success,
      'payload': toJsonT(instance.payload),
    };
