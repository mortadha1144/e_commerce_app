// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserCreate {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(toJson: fieldValueToJson)
  FieldValue get createdAt => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCreateCopyWith<UserCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateCopyWith<$Res> {
  factory $UserCreateCopyWith(
          UserCreate value, $Res Function(UserCreate) then) =
      _$UserCreateCopyWithImpl<$Res, UserCreate>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String displayName,
      String? phoneNumber,
      String? address,
      @JsonKey(toJson: fieldValueToJson) FieldValue createdAt,
      String? image});
}

/// @nodoc
class _$UserCreateCopyWithImpl<$Res, $Val extends UserCreate>
    implements $UserCreateCopyWith<$Res> {
  _$UserCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? createdAt = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCreateImplCopyWith<$Res>
    implements $UserCreateCopyWith<$Res> {
  factory _$$UserCreateImplCopyWith(
          _$UserCreateImpl value, $Res Function(_$UserCreateImpl) then) =
      __$$UserCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String displayName,
      String? phoneNumber,
      String? address,
      @JsonKey(toJson: fieldValueToJson) FieldValue createdAt,
      String? image});
}

/// @nodoc
class __$$UserCreateImplCopyWithImpl<$Res>
    extends _$UserCreateCopyWithImpl<$Res, _$UserCreateImpl>
    implements _$$UserCreateImplCopyWith<$Res> {
  __$$UserCreateImplCopyWithImpl(
      _$UserCreateImpl _value, $Res Function(_$UserCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? createdAt = null,
    Object? image = freezed,
  }) {
    return _then(_$UserCreateImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$UserCreateImpl implements _UserCreate {
  _$UserCreateImpl(
      {required this.uid,
      required this.email,
      required this.displayName,
      required this.phoneNumber,
      required this.address,
      @JsonKey(toJson: fieldValueToJson) required this.createdAt,
      required this.image});

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  @JsonKey(toJson: fieldValueToJson)
  final FieldValue createdAt;
  @override
  final String? image;

  @override
  String toString() {
    return 'UserCreate(uid: $uid, email: $email, displayName: $displayName, phoneNumber: $phoneNumber, address: $address, createdAt: $createdAt, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCreateImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, displayName,
      phoneNumber, address, createdAt, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreateImplCopyWith<_$UserCreateImpl> get copyWith =>
      __$$UserCreateImplCopyWithImpl<_$UserCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCreateImplToJson(
      this,
    );
  }
}

abstract class _UserCreate implements UserCreate {
  factory _UserCreate(
      {required final String uid,
      required final String email,
      required final String displayName,
      required final String? phoneNumber,
      required final String? address,
      @JsonKey(toJson: fieldValueToJson) required final FieldValue createdAt,
      required final String? image}) = _$UserCreateImpl;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get phoneNumber;
  @override
  String? get address;
  @override
  @JsonKey(toJson: fieldValueToJson)
  FieldValue get createdAt;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserCreateImplCopyWith<_$UserCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEdit {
  String? get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEditCopyWith<UserEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEditCopyWith<$Res> {
  factory $UserEditCopyWith(UserEdit value, $Res Function(UserEdit) then) =
      _$UserEditCopyWithImpl<$Res, UserEdit>;
  @useResult
  $Res call(
      {String? email,
      String? displayName,
      String? phoneNumber,
      String? address,
      String? image});
}

/// @nodoc
class _$UserEditCopyWithImpl<$Res, $Val extends UserEdit>
    implements $UserEditCopyWith<$Res> {
  _$UserEditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEditImplCopyWith<$Res>
    implements $UserEditCopyWith<$Res> {
  factory _$$UserEditImplCopyWith(
          _$UserEditImpl value, $Res Function(_$UserEditImpl) then) =
      __$$UserEditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? displayName,
      String? phoneNumber,
      String? address,
      String? image});
}

/// @nodoc
class __$$UserEditImplCopyWithImpl<$Res>
    extends _$UserEditCopyWithImpl<$Res, _$UserEditImpl>
    implements _$$UserEditImplCopyWith<$Res> {
  __$$UserEditImplCopyWithImpl(
      _$UserEditImpl _value, $Res Function(_$UserEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UserEditImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    includeIfNull: false, createToJson: true, createFactory: false)
class _$UserEditImpl implements _UserEdit {
  _$UserEditImpl(
      {this.email,
      this.displayName,
      this.phoneNumber,
      this.address,
      this.image});

  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  final String? image;

  @override
  String toString() {
    return 'UserEdit(email: $email, displayName: $displayName, phoneNumber: $phoneNumber, address: $address, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEditImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, displayName, phoneNumber, address, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEditImplCopyWith<_$UserEditImpl> get copyWith =>
      __$$UserEditImplCopyWithImpl<_$UserEditImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEditImplToJson(
      this,
    );
  }
}

abstract class _UserEdit implements UserEdit {
  factory _UserEdit(
      {final String? email,
      final String? displayName,
      final String? phoneNumber,
      final String? address,
      final String? image}) = _$UserEditImpl;

  @override
  String? get email;
  @override
  String? get displayName;
  @override
  String? get phoneNumber;
  @override
  String? get address;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserEditImplCopyWith<_$UserEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @TimeStampJsonConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String displayName,
      String? phoneNumber,
      String? address,
      @TimeStampJsonConverter() DateTime createdAt,
      String? image});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? createdAt = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String displayName,
      String? phoneNumber,
      String? address,
      @TimeStampJsonConverter() DateTime createdAt,
      String? image});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? createdAt = null,
    Object? image = freezed,
  }) {
    return _then(_$UserDataImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl extends _UserData {
  _$UserDataImpl(
      {required this.uid,
      required this.email,
      required this.displayName,
      required this.phoneNumber,
      required this.address,
      @TimeStampJsonConverter() required this.createdAt,
      required this.image})
      : super._();

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  @TimeStampJsonConverter()
  final DateTime createdAt;
  @override
  final String? image;

  @override
  String toString() {
    return 'UserData(uid: $uid, email: $email, displayName: $displayName, phoneNumber: $phoneNumber, address: $address, createdAt: $createdAt, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, displayName,
      phoneNumber, address, createdAt, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData extends UserData {
  factory _UserData(
      {required final String uid,
      required final String email,
      required final String displayName,
      required final String? phoneNumber,
      required final String? address,
      @TimeStampJsonConverter() required final DateTime createdAt,
      required final String? image}) = _$UserDataImpl;
  _UserData._() : super._();

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get phoneNumber;
  @override
  String? get address;
  @override
  @TimeStampJsonConverter()
  DateTime get createdAt;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
