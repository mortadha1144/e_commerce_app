import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    @JsonKey(name: ApiResponse.messageKey) required String? message,
    @JsonKey(name: ApiResponse.successKey) required bool success,
    @JsonKey(name: ApiResponse.payloadKey) required T payload,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);

  const ApiResponse._();

  static const String messageKey = 'message';
  static const String successKey = 'success';
  static const String payloadKey = 'payload';
}
