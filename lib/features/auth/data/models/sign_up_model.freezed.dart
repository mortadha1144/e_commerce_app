// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpModel {
  String get email;
  String get password;
  String get displayName;
  String get phoneNumber;
  String get address;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpModelCopyWith<SignUpModel> get copyWith =>
      _$SignUpModelCopyWithImpl<SignUpModel>(this as SignUpModel, _$identity);

  /// Serializes this SignUpModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, displayName, phoneNumber, address);

  @override
  String toString() {
    return 'SignUpModel(email: $email, password: $password, displayName: $displayName, phoneNumber: $phoneNumber, address: $address)';
  }
}

/// @nodoc
abstract mixin class $SignUpModelCopyWith<$Res> {
  factory $SignUpModelCopyWith(
          SignUpModel value, $Res Function(SignUpModel) _then) =
      _$SignUpModelCopyWithImpl;
  @useResult
  $Res call(
      {String email,
      String password,
      String displayName,
      String phoneNumber,
      String address});
}

/// @nodoc
class _$SignUpModelCopyWithImpl<$Res> implements $SignUpModelCopyWith<$Res> {
  _$SignUpModelCopyWithImpl(this._self, this._then);

  final SignUpModel _self;
  final $Res Function(SignUpModel) _then;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
    Object? phoneNumber = null,
    Object? address = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SignUpModel implements SignUpModel {
  const _SignUpModel(
      {required this.email,
      required this.password,
      required this.displayName,
      required this.phoneNumber,
      required this.address});
  factory _SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String displayName;
  @override
  final String phoneNumber;
  @override
  final String address;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpModelCopyWith<_SignUpModel> get copyWith =>
      __$SignUpModelCopyWithImpl<_SignUpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignUpModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, displayName, phoneNumber, address);

  @override
  String toString() {
    return 'SignUpModel(email: $email, password: $password, displayName: $displayName, phoneNumber: $phoneNumber, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$SignUpModelCopyWith<$Res>
    implements $SignUpModelCopyWith<$Res> {
  factory _$SignUpModelCopyWith(
          _SignUpModel value, $Res Function(_SignUpModel) _then) =
      __$SignUpModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String displayName,
      String phoneNumber,
      String address});
}

/// @nodoc
class __$SignUpModelCopyWithImpl<$Res> implements _$SignUpModelCopyWith<$Res> {
  __$SignUpModelCopyWithImpl(this._self, this._then);

  final _SignUpModel _self;
  final $Res Function(_SignUpModel) _then;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
    Object? phoneNumber = null,
    Object? address = null,
  }) {
    return _then(_SignUpModel(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
