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

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: FirebaseFieldName.userId)
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: FirebaseFieldName.email)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: FirebaseFieldName.displayName)
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: FirebaseFieldName.phoneNumber)
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: FirebaseFieldName.address)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: FirebaseFieldName.image)
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: FirebaseFieldName.userId) String? userId,
      @JsonKey(name: FirebaseFieldName.email) String? email,
      @JsonKey(name: FirebaseFieldName.displayName) String? displayName,
      @JsonKey(name: FirebaseFieldName.phoneNumber) String? phoneNumber,
      @JsonKey(name: FirebaseFieldName.address) String? address,
      @JsonKey(name: FirebaseFieldName.image) String? image});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: FirebaseFieldName.userId) String? userId,
      @JsonKey(name: FirebaseFieldName.email) String? email,
      @JsonKey(name: FirebaseFieldName.displayName) String? displayName,
      @JsonKey(name: FirebaseFieldName.phoneNumber) String? phoneNumber,
      @JsonKey(name: FirebaseFieldName.address) String? address,
      @JsonKey(name: FirebaseFieldName.image) String? image});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UserModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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

@JsonSerializable(includeIfNull: false)
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: FirebaseFieldName.userId) this.userId,
      @JsonKey(name: FirebaseFieldName.email) this.email,
      @JsonKey(name: FirebaseFieldName.displayName) this.displayName,
      @JsonKey(name: FirebaseFieldName.phoneNumber) this.phoneNumber,
      @JsonKey(name: FirebaseFieldName.address) this.address,
      @JsonKey(name: FirebaseFieldName.image) this.image});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: FirebaseFieldName.userId)
  final String? userId;
  @override
  @JsonKey(name: FirebaseFieldName.email)
  final String? email;
  @override
  @JsonKey(name: FirebaseFieldName.displayName)
  final String? displayName;
  @override
  @JsonKey(name: FirebaseFieldName.phoneNumber)
  final String? phoneNumber;
  @override
  @JsonKey(name: FirebaseFieldName.address)
  final String? address;
  @override
  @JsonKey(name: FirebaseFieldName.image)
  final String? image;

  @override
  String toString() {
    return 'UserModel(userId: $userId, email: $email, displayName: $displayName, phoneNumber: $phoneNumber, address: $address, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
  int get hashCode => Object.hash(
      runtimeType, userId, email, displayName, phoneNumber, address, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: FirebaseFieldName.userId) final String? userId,
      @JsonKey(name: FirebaseFieldName.email) final String? email,
      @JsonKey(name: FirebaseFieldName.displayName) final String? displayName,
      @JsonKey(name: FirebaseFieldName.phoneNumber) final String? phoneNumber,
      @JsonKey(name: FirebaseFieldName.address) final String? address,
      @JsonKey(name: FirebaseFieldName.image)
      final String? image}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: FirebaseFieldName.userId)
  String? get userId;
  @override
  @JsonKey(name: FirebaseFieldName.email)
  String? get email;
  @override
  @JsonKey(name: FirebaseFieldName.displayName)
  String? get displayName;
  @override
  @JsonKey(name: FirebaseFieldName.phoneNumber)
  String? get phoneNumber;
  @override
  @JsonKey(name: FirebaseFieldName.address)
  String? get address;
  @override
  @JsonKey(name: FirebaseFieldName.image)
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
