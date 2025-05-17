// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verify_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpVerifyRequestBody {
  @JsonKey(name: OtpVerifyRequestBody.phoneNumberKey)
  String get phoneNumber;
  @JsonKey(name: OtpVerifyRequestBody.codeKey)
  String get code;

  /// Create a copy of OtpVerifyRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OtpVerifyRequestBodyCopyWith<OtpVerifyRequestBody> get copyWith =>
      _$OtpVerifyRequestBodyCopyWithImpl<OtpVerifyRequestBody>(
          this as OtpVerifyRequestBody, _$identity);

  /// Serializes this OtpVerifyRequestBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpVerifyRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @override
  String toString() {
    return 'OtpVerifyRequestBody(phoneNumber: $phoneNumber, code: $code)';
  }
}

/// @nodoc
abstract mixin class $OtpVerifyRequestBodyCopyWith<$Res> {
  factory $OtpVerifyRequestBodyCopyWith(OtpVerifyRequestBody value,
          $Res Function(OtpVerifyRequestBody) _then) =
      _$OtpVerifyRequestBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: OtpVerifyRequestBody.phoneNumberKey) String phoneNumber,
      @JsonKey(name: OtpVerifyRequestBody.codeKey) String code});
}

/// @nodoc
class _$OtpVerifyRequestBodyCopyWithImpl<$Res>
    implements $OtpVerifyRequestBodyCopyWith<$Res> {
  _$OtpVerifyRequestBodyCopyWithImpl(this._self, this._then);

  final OtpVerifyRequestBody _self;
  final $Res Function(OtpVerifyRequestBody) _then;

  /// Create a copy of OtpVerifyRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OtpVerifyRequestBody extends OtpVerifyRequestBody {
  const _OtpVerifyRequestBody(
      {@JsonKey(name: OtpVerifyRequestBody.phoneNumberKey)
      required this.phoneNumber,
      @JsonKey(name: OtpVerifyRequestBody.codeKey) required this.code})
      : super._();
  factory _OtpVerifyRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyRequestBodyFromJson(json);

  @override
  @JsonKey(name: OtpVerifyRequestBody.phoneNumberKey)
  final String phoneNumber;
  @override
  @JsonKey(name: OtpVerifyRequestBody.codeKey)
  final String code;

  /// Create a copy of OtpVerifyRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OtpVerifyRequestBodyCopyWith<_OtpVerifyRequestBody> get copyWith =>
      __$OtpVerifyRequestBodyCopyWithImpl<_OtpVerifyRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OtpVerifyRequestBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpVerifyRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @override
  String toString() {
    return 'OtpVerifyRequestBody(phoneNumber: $phoneNumber, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$OtpVerifyRequestBodyCopyWith<$Res>
    implements $OtpVerifyRequestBodyCopyWith<$Res> {
  factory _$OtpVerifyRequestBodyCopyWith(_OtpVerifyRequestBody value,
          $Res Function(_OtpVerifyRequestBody) _then) =
      __$OtpVerifyRequestBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: OtpVerifyRequestBody.phoneNumberKey) String phoneNumber,
      @JsonKey(name: OtpVerifyRequestBody.codeKey) String code});
}

/// @nodoc
class __$OtpVerifyRequestBodyCopyWithImpl<$Res>
    implements _$OtpVerifyRequestBodyCopyWith<$Res> {
  __$OtpVerifyRequestBodyCopyWithImpl(this._self, this._then);

  final _OtpVerifyRequestBody _self;
  final $Res Function(_OtpVerifyRequestBody) _then;

  /// Create a copy of OtpVerifyRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_OtpVerifyRequestBody(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
