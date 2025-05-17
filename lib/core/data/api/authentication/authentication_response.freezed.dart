// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticationResponse {
  @JsonKey(name: AuthenticationResponse.tokenKey)
  String get token;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticationResponseCopyWith<AuthenticationResponse> get copyWith =>
      _$AuthenticationResponseCopyWithImpl<AuthenticationResponse>(
          this as AuthenticationResponse, _$identity);

  /// Serializes this AuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationResponse &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'AuthenticationResponse(token: $token)';
  }
}

/// @nodoc
abstract mixin class $AuthenticationResponseCopyWith<$Res> {
  factory $AuthenticationResponseCopyWith(AuthenticationResponse value,
          $Res Function(AuthenticationResponse) _then) =
      _$AuthenticationResponseCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: AuthenticationResponse.tokenKey) String token});
}

/// @nodoc
class _$AuthenticationResponseCopyWithImpl<$Res>
    implements $AuthenticationResponseCopyWith<$Res> {
  _$AuthenticationResponseCopyWithImpl(this._self, this._then);

  final AuthenticationResponse _self;
  final $Res Function(AuthenticationResponse) _then;

  /// Create a copy of AuthenticationResponse
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
class _AuthenticationResponse extends AuthenticationResponse {
  const _AuthenticationResponse(
      {@JsonKey(name: AuthenticationResponse.tokenKey) required this.token})
      : super._();
  factory _AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

  @override
  @JsonKey(name: AuthenticationResponse.tokenKey)
  final String token;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthenticationResponseCopyWith<_AuthenticationResponse> get copyWith =>
      __$AuthenticationResponseCopyWithImpl<_AuthenticationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthenticationResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticationResponse &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @override
  String toString() {
    return 'AuthenticationResponse(token: $token)';
  }
}

/// @nodoc
abstract mixin class _$AuthenticationResponseCopyWith<$Res>
    implements $AuthenticationResponseCopyWith<$Res> {
  factory _$AuthenticationResponseCopyWith(_AuthenticationResponse value,
          $Res Function(_AuthenticationResponse) _then) =
      __$AuthenticationResponseCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: AuthenticationResponse.tokenKey) String token});
}

/// @nodoc
class __$AuthenticationResponseCopyWithImpl<$Res>
    implements _$AuthenticationResponseCopyWith<$Res> {
  __$AuthenticationResponseCopyWithImpl(this._self, this._then);

  final _AuthenticationResponse _self;
  final $Res Function(_AuthenticationResponse) _then;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
  }) {
    return _then(_AuthenticationResponse(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
