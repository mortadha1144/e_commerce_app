// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
NetworkExceptions _$NetworkExceptionsFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'emailAlreadyInUse':
      return EmailAlreadyInUse.fromJson(json);
    case 'wrongPassword':
      return WrongPassword.fromJson(json);
    case 'invalidEmail':
      return InvalidEmail.fromJson(json);
    case 'operationNotAllowed':
      return OperationNotAllowed.fromJson(json);
    case 'weakPassword':
      return WeakPassword.fromJson(json);
    case 'userDisabled':
      return UserDisabled.fromJson(json);
    case 'userNotFound':
      return UserNotFound.fromJson(json);
    case 'authInvalidEmail':
      return AuthInvalidEmail.fromJson(json);
    case 'authUserNotFound':
      return AuthUserNotFound.fromJson(json);
    case 'unexpectedError':
      return UnexpectedError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'NetworkExceptions',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$NetworkExceptions implements DiagnosticableTreeMixin {
  /// Serializes this NetworkExceptions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'NetworkExceptions'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkExceptions);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions()';
  }
}

/// @nodoc
class $NetworkExceptionsCopyWith<$Res> {
  $NetworkExceptionsCopyWith(
      NetworkExceptions _, $Res Function(NetworkExceptions) __);
}

/// @nodoc
@JsonSerializable()
class EmailAlreadyInUse
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const EmailAlreadyInUse({final String? $type})
      : $type = $type ?? 'emailAlreadyInUse';
  factory EmailAlreadyInUse.fromJson(Map<String, dynamic> json) =>
      _$EmailAlreadyInUseFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$EmailAlreadyInUseToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.emailAlreadyInUse'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailAlreadyInUse);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.emailAlreadyInUse()';
  }
}

/// @nodoc
class $EmailAlreadyInUseCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  $EmailAlreadyInUseCopyWith(
      EmailAlreadyInUse _, $Res Function(EmailAlreadyInUse) __);
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(this._self, this._then);

  final EmailAlreadyInUse _self;
  final $Res Function(EmailAlreadyInUse) _then;
}

/// @nodoc
@JsonSerializable()
class WrongPassword with DiagnosticableTreeMixin implements NetworkExceptions {
  const WrongPassword({final String? $type}) : $type = $type ?? 'wrongPassword';
  factory WrongPassword.fromJson(Map<String, dynamic> json) =>
      _$WrongPasswordFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WrongPasswordToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.wrongPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WrongPassword);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.wrongPassword()';
  }
}

/// @nodoc
class $WrongPasswordCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  $WrongPasswordCopyWith(WrongPassword _, $Res Function(WrongPassword) __);
}

/// @nodoc
class _$WrongPasswordCopyWithImpl<$Res>
    implements $WrongPasswordCopyWith<$Res> {
  _$WrongPasswordCopyWithImpl(this._self, this._then);

  final WrongPassword _self;
  final $Res Function(WrongPassword) _then;
}

/// @nodoc
@JsonSerializable()
class InvalidEmail with DiagnosticableTreeMixin implements NetworkExceptions {
  const InvalidEmail({final String? $type}) : $type = $type ?? 'invalidEmail';
  factory InvalidEmail.fromJson(Map<String, dynamic> json) =>
      _$InvalidEmailFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$InvalidEmailToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.invalidEmail'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InvalidEmail);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.invalidEmail()';
  }
}

/// @nodoc
class $InvalidEmailCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  $InvalidEmailCopyWith(InvalidEmail _, $Res Function(InvalidEmail) __);
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(this._self, this._then);

  final InvalidEmail _self;
  final $Res Function(InvalidEmail) _then;
}

/// @nodoc
@JsonSerializable()
class OperationNotAllowed
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const OperationNotAllowed({final String? $type})
      : $type = $type ?? 'operationNotAllowed';
  factory OperationNotAllowed.fromJson(Map<String, dynamic> json) =>
      _$OperationNotAllowedFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OperationNotAllowedToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'NetworkExceptions.operationNotAllowed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OperationNotAllowed);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.operationNotAllowed()';
  }
}

/// @nodoc
class $OperationNotAllowedCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  $OperationNotAllowedCopyWith(
      OperationNotAllowed _, $Res Function(OperationNotAllowed) __);
}

/// @nodoc
class _$OperationNotAllowedCopyWithImpl<$Res>
    implements $OperationNotAllowedCopyWith<$Res> {
  _$OperationNotAllowedCopyWithImpl(this._self, this._then);

  final OperationNotAllowed _self;
  final $Res Function(OperationNotAllowed) _then;
}

/// @nodoc
@JsonSerializable()
class WeakPassword with DiagnosticableTreeMixin implements NetworkExceptions {
  const WeakPassword({final String? $type}) : $type = $type ?? 'weakPassword';
  factory WeakPassword.fromJson(Map<String, dynamic> json) =>
      _$WeakPasswordFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$WeakPasswordToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.weakPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WeakPassword);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.weakPassword()';
  }
}

/// @nodoc
class $WeakPasswordCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  $WeakPasswordCopyWith(WeakPassword _, $Res Function(WeakPassword) __);
}

/// @nodoc
class _$WeakPasswordCopyWithImpl<$Res> implements $WeakPasswordCopyWith<$Res> {
  _$WeakPasswordCopyWithImpl(this._self, this._then);

  final WeakPassword _self;
  final $Res Function(WeakPassword) _then;
}

/// @nodoc
@JsonSerializable()
class UserDisabled with DiagnosticableTreeMixin implements NetworkExceptions {
  const UserDisabled({final String? $type}) : $type = $type ?? 'userDisabled';
  factory UserDisabled.fromJson(Map<String, dynamic> json) =>
      _$UserDisabledFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$UserDisabledToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.userDisabled'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDisabled);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.userDisabled()';
  }
}

/// @nodoc
class $UserDisabledCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  $UserDisabledCopyWith(UserDisabled _, $Res Function(UserDisabled) __);
}

/// @nodoc
class _$UserDisabledCopyWithImpl<$Res> implements $UserDisabledCopyWith<$Res> {
  _$UserDisabledCopyWithImpl(this._self, this._then);

  final UserDisabled _self;
  final $Res Function(UserDisabled) _then;
}

/// @nodoc
@JsonSerializable()
class UserNotFound with DiagnosticableTreeMixin implements NetworkExceptions {
  const UserNotFound({final String? $type}) : $type = $type ?? 'userNotFound';
  factory UserNotFound.fromJson(Map<String, dynamic> json) =>
      _$UserNotFoundFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$UserNotFoundToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.userNotFound'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserNotFound);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.userNotFound()';
  }
}

/// @nodoc
class $UserNotFoundCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  $UserNotFoundCopyWith(UserNotFound _, $Res Function(UserNotFound) __);
}

/// @nodoc
class _$UserNotFoundCopyWithImpl<$Res> implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(this._self, this._then);

  final UserNotFound _self;
  final $Res Function(UserNotFound) _then;
}

/// @nodoc
@JsonSerializable()
class AuthInvalidEmail
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const AuthInvalidEmail({final String? $type})
      : $type = $type ?? 'authInvalidEmail';
  factory AuthInvalidEmail.fromJson(Map<String, dynamic> json) =>
      _$AuthInvalidEmailFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthInvalidEmailToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.authInvalidEmail'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInvalidEmail);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.authInvalidEmail()';
  }
}

/// @nodoc
class $AuthInvalidEmailCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  $AuthInvalidEmailCopyWith(
      AuthInvalidEmail _, $Res Function(AuthInvalidEmail) __);
}

/// @nodoc
class _$AuthInvalidEmailCopyWithImpl<$Res>
    implements $AuthInvalidEmailCopyWith<$Res> {
  _$AuthInvalidEmailCopyWithImpl(this._self, this._then);

  final AuthInvalidEmail _self;
  final $Res Function(AuthInvalidEmail) _then;
}

/// @nodoc
@JsonSerializable()
class AuthUserNotFound
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const AuthUserNotFound({final String? $type})
      : $type = $type ?? 'authUserNotFound';
  factory AuthUserNotFound.fromJson(Map<String, dynamic> json) =>
      _$AuthUserNotFoundFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthUserNotFoundToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.authUserNotFound'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthUserNotFound);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.authUserNotFound()';
  }
}

/// @nodoc
class $AuthUserNotFoundCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  $AuthUserNotFoundCopyWith(
      AuthUserNotFound _, $Res Function(AuthUserNotFound) __);
}

/// @nodoc
class _$AuthUserNotFoundCopyWithImpl<$Res>
    implements $AuthUserNotFoundCopyWith<$Res> {
  _$AuthUserNotFoundCopyWithImpl(this._self, this._then);

  final AuthUserNotFound _self;
  final $Res Function(AuthUserNotFound) _then;
}

/// @nodoc
@JsonSerializable()
class UnexpectedError
    with DiagnosticableTreeMixin
    implements NetworkExceptions {
  const UnexpectedError({final String? $type})
      : $type = $type ?? 'unexpectedError';
  factory UnexpectedError.fromJson(Map<String, dynamic> json) =>
      _$UnexpectedErrorFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$UnexpectedErrorToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.unexpectedError'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnexpectedError);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unexpectedError()';
  }
}

/// @nodoc
class $UnexpectedErrorCopyWith<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  $UnexpectedErrorCopyWith(
      UnexpectedError _, $Res Function(UnexpectedError) __);
}

/// @nodoc
class _$UnexpectedErrorCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(this._self, this._then);

  final UnexpectedError _self;
  final $Res Function(UnexpectedError) _then;
}

// dart format on
