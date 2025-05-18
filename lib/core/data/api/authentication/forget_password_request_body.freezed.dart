// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgetPasswordRequestBody {
  @JsonKey(name: ForgetPasswordRequestBody.phoneNumberKey)
  String get phoneNumber;

  /// Create a copy of ForgetPasswordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgetPasswordRequestBodyCopyWith<ForgetPasswordRequestBody> get copyWith =>
      _$ForgetPasswordRequestBodyCopyWithImpl<ForgetPasswordRequestBody>(
          this as ForgetPasswordRequestBody, _$identity);

  /// Serializes this ForgetPasswordRequestBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgetPasswordRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'ForgetPasswordRequestBody(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $ForgetPasswordRequestBodyCopyWith<$Res> {
  factory $ForgetPasswordRequestBodyCopyWith(ForgetPasswordRequestBody value,
          $Res Function(ForgetPasswordRequestBody) _then) =
      _$ForgetPasswordRequestBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ForgetPasswordRequestBody.phoneNumberKey)
      String phoneNumber});
}

/// @nodoc
class _$ForgetPasswordRequestBodyCopyWithImpl<$Res>
    implements $ForgetPasswordRequestBodyCopyWith<$Res> {
  _$ForgetPasswordRequestBodyCopyWithImpl(this._self, this._then);

  final ForgetPasswordRequestBody _self;
  final $Res Function(ForgetPasswordRequestBody) _then;

  /// Create a copy of ForgetPasswordRequestBody
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
class _ForgetPasswordRequestBody extends ForgetPasswordRequestBody {
  const _ForgetPasswordRequestBody(
      {@JsonKey(name: ForgetPasswordRequestBody.phoneNumberKey)
      required this.phoneNumber})
      : super._();
  factory _ForgetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordRequestBodyFromJson(json);

  @override
  @JsonKey(name: ForgetPasswordRequestBody.phoneNumberKey)
  final String phoneNumber;

  /// Create a copy of ForgetPasswordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForgetPasswordRequestBodyCopyWith<_ForgetPasswordRequestBody>
      get copyWith =>
          __$ForgetPasswordRequestBodyCopyWithImpl<_ForgetPasswordRequestBody>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForgetPasswordRequestBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgetPasswordRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'ForgetPasswordRequestBody(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class _$ForgetPasswordRequestBodyCopyWith<$Res>
    implements $ForgetPasswordRequestBodyCopyWith<$Res> {
  factory _$ForgetPasswordRequestBodyCopyWith(_ForgetPasswordRequestBody value,
          $Res Function(_ForgetPasswordRequestBody) _then) =
      __$ForgetPasswordRequestBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ForgetPasswordRequestBody.phoneNumberKey)
      String phoneNumber});
}

/// @nodoc
class __$ForgetPasswordRequestBodyCopyWithImpl<$Res>
    implements _$ForgetPasswordRequestBodyCopyWith<$Res> {
  __$ForgetPasswordRequestBodyCopyWithImpl(this._self, this._then);

  final _ForgetPasswordRequestBody _self;
  final $Res Function(_ForgetPasswordRequestBody) _then;

  /// Create a copy of ForgetPasswordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_ForgetPasswordRequestBody(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
