// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterRequestBody {
  @JsonKey(name: RegisterRequestBody.phoneNumberKey)
  String get phoneNumber;
  @JsonKey(name: RegisterRequestBody.passwordKey)
  String get password;
  @JsonKey(name: RegisterRequestBody.fullNameKey)
  String get fullName;
  @JsonKey(name: RegisterRequestBody.emailKey)
  String? get email;
  @JsonKey(name: RegisterRequestBody.addressKey)
  String? get address;

  /// Create a copy of RegisterRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterRequestBodyCopyWith<RegisterRequestBody> get copyWith =>
      _$RegisterRequestBodyCopyWithImpl<RegisterRequestBody>(
          this as RegisterRequestBody, _$identity);

  /// Serializes this RegisterRequestBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, password, fullName, email, address);

  @override
  String toString() {
    return 'RegisterRequestBody(phoneNumber: $phoneNumber, password: $password, fullName: $fullName, email: $email, address: $address)';
  }
}

/// @nodoc
abstract mixin class $RegisterRequestBodyCopyWith<$Res> {
  factory $RegisterRequestBodyCopyWith(
          RegisterRequestBody value, $Res Function(RegisterRequestBody) _then) =
      _$RegisterRequestBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: RegisterRequestBody.phoneNumberKey) String phoneNumber,
      @JsonKey(name: RegisterRequestBody.passwordKey) String password,
      @JsonKey(name: RegisterRequestBody.fullNameKey) String fullName,
      @JsonKey(name: RegisterRequestBody.emailKey) String? email,
      @JsonKey(name: RegisterRequestBody.addressKey) String? address});
}

/// @nodoc
class _$RegisterRequestBodyCopyWithImpl<$Res>
    implements $RegisterRequestBodyCopyWith<$Res> {
  _$RegisterRequestBodyCopyWithImpl(this._self, this._then);

  final RegisterRequestBody _self;
  final $Res Function(RegisterRequestBody) _then;

  /// Create a copy of RegisterRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? fullName = null,
    Object? email = freezed,
    Object? address = freezed,
  }) {
    return _then(_self.copyWith(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RegisterRequestBody implements RegisterRequestBody {
  const _RegisterRequestBody(
      {@JsonKey(name: RegisterRequestBody.phoneNumberKey)
      required this.phoneNumber,
      @JsonKey(name: RegisterRequestBody.passwordKey) required this.password,
      @JsonKey(name: RegisterRequestBody.fullNameKey) required this.fullName,
      @JsonKey(name: RegisterRequestBody.emailKey) required this.email,
      @JsonKey(name: RegisterRequestBody.addressKey) required this.address});
  factory _RegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyFromJson(json);

  @override
  @JsonKey(name: RegisterRequestBody.phoneNumberKey)
  final String phoneNumber;
  @override
  @JsonKey(name: RegisterRequestBody.passwordKey)
  final String password;
  @override
  @JsonKey(name: RegisterRequestBody.fullNameKey)
  final String fullName;
  @override
  @JsonKey(name: RegisterRequestBody.emailKey)
  final String? email;
  @override
  @JsonKey(name: RegisterRequestBody.addressKey)
  final String? address;

  /// Create a copy of RegisterRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterRequestBodyCopyWith<_RegisterRequestBody> get copyWith =>
      __$RegisterRequestBodyCopyWithImpl<_RegisterRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegisterRequestBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterRequestBody &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, password, fullName, email, address);

  @override
  String toString() {
    return 'RegisterRequestBody(phoneNumber: $phoneNumber, password: $password, fullName: $fullName, email: $email, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$RegisterRequestBodyCopyWith<$Res>
    implements $RegisterRequestBodyCopyWith<$Res> {
  factory _$RegisterRequestBodyCopyWith(_RegisterRequestBody value,
          $Res Function(_RegisterRequestBody) _then) =
      __$RegisterRequestBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: RegisterRequestBody.phoneNumberKey) String phoneNumber,
      @JsonKey(name: RegisterRequestBody.passwordKey) String password,
      @JsonKey(name: RegisterRequestBody.fullNameKey) String fullName,
      @JsonKey(name: RegisterRequestBody.emailKey) String? email,
      @JsonKey(name: RegisterRequestBody.addressKey) String? address});
}

/// @nodoc
class __$RegisterRequestBodyCopyWithImpl<$Res>
    implements _$RegisterRequestBodyCopyWith<$Res> {
  __$RegisterRequestBodyCopyWithImpl(this._self, this._then);

  final _RegisterRequestBody _self;
  final $Res Function(_RegisterRequestBody) _then;

  /// Create a copy of RegisterRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
    Object? fullName = null,
    Object? email = freezed,
    Object? address = freezed,
  }) {
    return _then(_RegisterRequestBody(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
