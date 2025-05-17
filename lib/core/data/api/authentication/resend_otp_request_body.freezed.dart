// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_otp_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResendOtpRequestBody {
  @JsonKey(name: ResendOtpRequestBody.phoneNumberKey)
  String get phoneNumber;

  /// Create a copy of ResendOtpRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResendOtpRequestBodyCopyWith<ResendOtpRequestBody> get copyWith =>
      _$ResendOtpRequestBodyCopyWithImpl<ResendOtpRequestBody>(
          this as ResendOtpRequestBody, _$identity);

  /// Serializes this ResendOtpRequestBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResendOtpRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'ResendOtpRequestBody(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $ResendOtpRequestBodyCopyWith<$Res> {
  factory $ResendOtpRequestBodyCopyWith(ResendOtpRequestBody value,
          $Res Function(ResendOtpRequestBody) _then) =
      _$ResendOtpRequestBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ResendOtpRequestBody.phoneNumberKey) String phoneNumber});
}

/// @nodoc
class _$ResendOtpRequestBodyCopyWithImpl<$Res>
    implements $ResendOtpRequestBodyCopyWith<$Res> {
  _$ResendOtpRequestBodyCopyWithImpl(this._self, this._then);

  final ResendOtpRequestBody _self;
  final $Res Function(ResendOtpRequestBody) _then;

  /// Create a copy of ResendOtpRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_self.copyWith(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ResendOtpRequestBody extends ResendOtpRequestBody {
  const _ResendOtpRequestBody(
      {@JsonKey(name: ResendOtpRequestBody.phoneNumberKey)
      required this.phoneNumber})
      : super._();
  factory _ResendOtpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResendOtpRequestBodyFromJson(json);

  @override
  @JsonKey(name: ResendOtpRequestBody.phoneNumberKey)
  final String phoneNumber;

  /// Create a copy of ResendOtpRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResendOtpRequestBodyCopyWith<_ResendOtpRequestBody> get copyWith =>
      __$ResendOtpRequestBodyCopyWithImpl<_ResendOtpRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResendOtpRequestBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResendOtpRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'ResendOtpRequestBody(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class _$ResendOtpRequestBodyCopyWith<$Res>
    implements $ResendOtpRequestBodyCopyWith<$Res> {
  factory _$ResendOtpRequestBodyCopyWith(_ResendOtpRequestBody value,
          $Res Function(_ResendOtpRequestBody) _then) =
      __$ResendOtpRequestBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ResendOtpRequestBody.phoneNumberKey) String phoneNumber});
}

/// @nodoc
class __$ResendOtpRequestBodyCopyWithImpl<$Res>
    implements _$ResendOtpRequestBodyCopyWith<$Res> {
  __$ResendOtpRequestBodyCopyWithImpl(this._self, this._then);

  final _ResendOtpRequestBody _self;
  final $Res Function(_ResendOtpRequestBody) _then;

  /// Create a copy of ResendOtpRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_ResendOtpRequestBody(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
