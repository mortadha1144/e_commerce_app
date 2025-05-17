// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpResponse {
  String get code;

  /// Create a copy of OtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OtpResponseCopyWith<OtpResponse> get copyWith =>
      _$OtpResponseCopyWithImpl<OtpResponse>(this as OtpResponse, _$identity);

  /// Serializes this OtpResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpResponse &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'OtpResponse(code: $code)';
  }
}

/// @nodoc
abstract mixin class $OtpResponseCopyWith<$Res> {
  factory $OtpResponseCopyWith(
          OtpResponse value, $Res Function(OtpResponse) _then) =
      _$OtpResponseCopyWithImpl;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$OtpResponseCopyWithImpl<$Res> implements $OtpResponseCopyWith<$Res> {
  _$OtpResponseCopyWithImpl(this._self, this._then);

  final OtpResponse _self;
  final $Res Function(OtpResponse) _then;

  /// Create a copy of OtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OtpResponse implements OtpResponse {
  const _OtpResponse({required this.code});
  factory _OtpResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseFromJson(json);

  @override
  final String code;

  /// Create a copy of OtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OtpResponseCopyWith<_OtpResponse> get copyWith =>
      __$OtpResponseCopyWithImpl<_OtpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OtpResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpResponse &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'OtpResponse(code: $code)';
  }
}

/// @nodoc
abstract mixin class _$OtpResponseCopyWith<$Res>
    implements $OtpResponseCopyWith<$Res> {
  factory _$OtpResponseCopyWith(
          _OtpResponse value, $Res Function(_OtpResponse) _then) =
      __$OtpResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$OtpResponseCopyWithImpl<$Res> implements _$OtpResponseCopyWith<$Res> {
  __$OtpResponseCopyWithImpl(this._self, this._then);

  final _OtpResponse _self;
  final $Res Function(_OtpResponse) _then;

  /// Create a copy of OtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
  }) {
    return _then(_OtpResponse(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
