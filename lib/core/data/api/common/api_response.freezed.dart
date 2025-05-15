// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResponse<T> {
  @JsonKey(name: ApiResponse.messageKey)
  String? get message;
  @JsonKey(name: ApiResponse.successKey)
  bool get success;
  @JsonKey(name: ApiResponse.payloadKey)
  T get payload;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      _$ApiResponseCopyWithImpl<T, ApiResponse<T>>(
          this as ApiResponse<T>, _$identity);

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponse<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success,
      const DeepCollectionEquality().hash(payload));

  @override
  String toString() {
    return 'ApiResponse<$T>(message: $message, success: $success, payload: $payload)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) _then) =
      _$ApiResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ApiResponse.messageKey) String? message,
      @JsonKey(name: ApiResponse.successKey) bool success,
      @JsonKey(name: ApiResponse.payloadKey) T payload});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._self, this._then);

  final ApiResponse<T> _self;
  final $Res Function(ApiResponse<T>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? success = null,
    Object? payload = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ApiResponse<T> extends ApiResponse<T> {
  const _ApiResponse(
      {@JsonKey(name: ApiResponse.messageKey) required this.message,
      @JsonKey(name: ApiResponse.successKey) required this.success,
      @JsonKey(name: ApiResponse.payloadKey) required this.payload})
      : super._();
  factory _ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);

  @override
  @JsonKey(name: ApiResponse.messageKey)
  final String? message;
  @override
  @JsonKey(name: ApiResponse.successKey)
  final bool success;
  @override
  @JsonKey(name: ApiResponse.payloadKey)
  final T payload;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiResponseCopyWith<T, _ApiResponse<T>> get copyWith =>
      __$ApiResponseCopyWithImpl<T, _ApiResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ApiResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResponse<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success,
      const DeepCollectionEquality().hash(payload));

  @override
  String toString() {
    return 'ApiResponse<$T>(message: $message, success: $success, payload: $payload)';
  }
}

/// @nodoc
abstract mixin class _$ApiResponseCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory _$ApiResponseCopyWith(
          _ApiResponse<T> value, $Res Function(_ApiResponse<T>) _then) =
      __$ApiResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ApiResponse.messageKey) String? message,
      @JsonKey(name: ApiResponse.successKey) bool success,
      @JsonKey(name: ApiResponse.payloadKey) T payload});
}

/// @nodoc
class __$ApiResponseCopyWithImpl<T, $Res>
    implements _$ApiResponseCopyWith<T, $Res> {
  __$ApiResponseCopyWithImpl(this._self, this._then);

  final _ApiResponse<T> _self;
  final $Res Function(_ApiResponse<T>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? success = null,
    Object? payload = freezed,
  }) {
    return _then(_ApiResponse<T>(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: freezed == payload
          ? _self.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

// dart format on
