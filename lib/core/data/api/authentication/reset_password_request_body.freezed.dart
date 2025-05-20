// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPasswordRequestBody {
  @JsonKey(name: ResetPasswordRequestBody.phoneNumberKey)
  String get phoneNumber;
  @JsonKey(name: ResetPasswordRequestBody.resetTokenKey)
  String get resetToken;
  @JsonKey(name: ResetPasswordRequestBody.newPasswordKey)
  String get newPassword;

  /// Create a copy of ResetPasswordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordRequestBodyCopyWith<ResetPasswordRequestBody> get copyWith =>
      _$ResetPasswordRequestBodyCopyWithImpl<ResetPasswordRequestBody>(
          this as ResetPasswordRequestBody, _$identity);

  /// Serializes this ResetPasswordRequestBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, resetToken, newPassword);

  @override
  String toString() {
    return 'ResetPasswordRequestBody(phoneNumber: $phoneNumber, resetToken: $resetToken, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordRequestBodyCopyWith<$Res> {
  factory $ResetPasswordRequestBodyCopyWith(ResetPasswordRequestBody value,
          $Res Function(ResetPasswordRequestBody) _then) =
      _$ResetPasswordRequestBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ResetPasswordRequestBody.phoneNumberKey)
      String phoneNumber,
      @JsonKey(name: ResetPasswordRequestBody.resetTokenKey) String resetToken,
      @JsonKey(name: ResetPasswordRequestBody.newPasswordKey)
      String newPassword});
}

/// @nodoc
class _$ResetPasswordRequestBodyCopyWithImpl<$Res>
    implements $ResetPasswordRequestBodyCopyWith<$Res> {
  _$ResetPasswordRequestBodyCopyWithImpl(this._self, this._then);

  final ResetPasswordRequestBody _self;
  final $Res Function(ResetPasswordRequestBody) _then;

  /// Create a copy of ResetPasswordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? resetToken = null,
    Object? newPassword = null,
  }) {
    return _then(_self.copyWith(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      resetToken: null == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ResetPasswordRequestBody extends ResetPasswordRequestBody {
  const _ResetPasswordRequestBody(
      {@JsonKey(name: ResetPasswordRequestBody.phoneNumberKey)
      required this.phoneNumber,
      @JsonKey(name: ResetPasswordRequestBody.resetTokenKey)
      required this.resetToken,
      @JsonKey(name: ResetPasswordRequestBody.newPasswordKey)
      required this.newPassword})
      : super._();
  factory _ResetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestBodyFromJson(json);

  @override
  @JsonKey(name: ResetPasswordRequestBody.phoneNumberKey)
  final String phoneNumber;
  @override
  @JsonKey(name: ResetPasswordRequestBody.resetTokenKey)
  final String resetToken;
  @override
  @JsonKey(name: ResetPasswordRequestBody.newPasswordKey)
  final String newPassword;

  /// Create a copy of ResetPasswordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResetPasswordRequestBodyCopyWith<_ResetPasswordRequestBody> get copyWith =>
      __$ResetPasswordRequestBodyCopyWithImpl<_ResetPasswordRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResetPasswordRequestBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPasswordRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, resetToken, newPassword);

  @override
  String toString() {
    return 'ResetPasswordRequestBody(phoneNumber: $phoneNumber, resetToken: $resetToken, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class _$ResetPasswordRequestBodyCopyWith<$Res>
    implements $ResetPasswordRequestBodyCopyWith<$Res> {
  factory _$ResetPasswordRequestBodyCopyWith(_ResetPasswordRequestBody value,
          $Res Function(_ResetPasswordRequestBody) _then) =
      __$ResetPasswordRequestBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ResetPasswordRequestBody.phoneNumberKey)
      String phoneNumber,
      @JsonKey(name: ResetPasswordRequestBody.resetTokenKey) String resetToken,
      @JsonKey(name: ResetPasswordRequestBody.newPasswordKey)
      String newPassword});
}

/// @nodoc
class __$ResetPasswordRequestBodyCopyWithImpl<$Res>
    implements _$ResetPasswordRequestBodyCopyWith<$Res> {
  __$ResetPasswordRequestBodyCopyWithImpl(this._self, this._then);

  final _ResetPasswordRequestBody _self;
  final $Res Function(_ResetPasswordRequestBody) _then;

  /// Create a copy of ResetPasswordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? resetToken = null,
    Object? newPassword = null,
  }) {
    return _then(_ResetPasswordRequestBody(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      resetToken: null == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
