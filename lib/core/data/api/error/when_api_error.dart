import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'when_api_error.freezed.dart';
part 'when_api_error.g.dart';

// TODO: add validations to the error response
@freezed
abstract class ApiError with _$ApiError {
  const factory ApiError({
    required String? message,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}

R whenApiError<R>({
  required Object? error,
  R Function(ApiError response)? apiError,
  R Function()? noInternetError,
  required R Function() orElse,
}) {
  if (error is DioException) {
    final noInternetErrors = [
      DioExceptionType.connectionTimeout,
      DioExceptionType.connectionError,
      DioExceptionType.sendTimeout,
      DioExceptionType.receiveTimeout,
    ];
    if (noInternetErrors.contains(error.type)) {
      return noInternetError?.call() ?? orElse();
    }

    if (error.response?.statusCode == 500) {
      return orElse();
    }
    final data = error.response?.data;
    if (data is Map<String, dynamic>) {
      if (apiError == null) return orElse();
      try {
        final response = ApiError.fromJson(data);
        return apiError(response);
      } catch (_) {
        return orElse();
      }
    }
    return orElse();
  }

  return orElse();
}
