// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_toke_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordResetTokeResponse {
  @JsonKey(name: PasswordResetTokeResponse.tokenKey)
  String get token;

  /// Create a copy of PasswordResetTokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PasswordResetTokeResponseCopyWith<PasswordResetTokeResponse> get copyWith =>
      _$PasswordResetTokeResponseCopyWithImpl<PasswordResetTokeResponse>(
          this as PasswordResetTokeResponse, _$identity);

  /// Serializes this PasswordResetTokeResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordResetTokeResponse &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'PasswordResetTokeResponse(token: $token)';
  }
}

/// @nodoc
abstract mixin class $PasswordResetTokeResponseCopyWith<$Res> {
  factory $PasswordResetTokeResponseCopyWith(PasswordResetTokeResponse value,
          $Res Function(PasswordResetTokeResponse) _then) =
      _$PasswordResetTokeResponseCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: PasswordResetTokeResponse.tokenKey) String token});
}

/// @nodoc
class _$PasswordResetTokeResponseCopyWithImpl<$Res>
    implements $PasswordResetTokeResponseCopyWith<$Res> {
  _$PasswordResetTokeResponseCopyWithImpl(this._self, this._then);

  final PasswordResetTokeResponse _self;
  final $Res Function(PasswordResetTokeResponse) _then;

  /// Create a copy of PasswordResetTokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PasswordResetTokeResponse extends PasswordResetTokeResponse {
  const _PasswordResetTokeResponse(
      {@JsonKey(name: PasswordResetTokeResponse.tokenKey) required this.token})
      : super._();
  factory _PasswordResetTokeResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetTokeResponseFromJson(json);

  @override
  @JsonKey(name: PasswordResetTokeResponse.tokenKey)
  final String token;

  /// Create a copy of PasswordResetTokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PasswordResetTokeResponseCopyWith<_PasswordResetTokeResponse>
      get copyWith =>
          __$PasswordResetTokeResponseCopyWithImpl<_PasswordResetTokeResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PasswordResetTokeResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordResetTokeResponse &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'PasswordResetTokeResponse(token: $token)';
  }
}

/// @nodoc
abstract mixin class _$PasswordResetTokeResponseCopyWith<$Res>
    implements $PasswordResetTokeResponseCopyWith<$Res> {
  factory _$PasswordResetTokeResponseCopyWith(_PasswordResetTokeResponse value,
          $Res Function(_PasswordResetTokeResponse) _then) =
      __$PasswordResetTokeResponseCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: PasswordResetTokeResponse.tokenKey) String token});
}

/// @nodoc
class __$PasswordResetTokeResponseCopyWithImpl<$Res>
    implements _$PasswordResetTokeResponseCopyWith<$Res> {
  __$PasswordResetTokeResponseCopyWithImpl(this._self, this._then);

  final _PasswordResetTokeResponse _self;
  final $Res Function(_PasswordResetTokeResponse) _then;

  /// Create a copy of PasswordResetTokeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
  }) {
    return _then(_PasswordResetTokeResponse(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
