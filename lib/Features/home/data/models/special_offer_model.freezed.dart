// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialOfferModel _$SpecialOfferModelFromJson(Map<String, dynamic> json) {
  return _SpecialOfferModel.fromJson(json);
}

/// @nodoc
mixin _$SpecialOfferModel {
  int get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: FirebaseFieldName.numOfBrands)
  int get numOfBrands => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpecialOfferModelCopyWith<SpecialOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialOfferModelCopyWith<$Res> {
  factory $SpecialOfferModelCopyWith(
          SpecialOfferModel value, $Res Function(SpecialOfferModel) then) =
      _$SpecialOfferModelCopyWithImpl<$Res, SpecialOfferModel>;
  @useResult
  $Res call(
      {int id,
      String category,
      @JsonKey(name: FirebaseFieldName.numOfBrands) int numOfBrands,
      String image});
}

/// @nodoc
class _$SpecialOfferModelCopyWithImpl<$Res, $Val extends SpecialOfferModel>
    implements $SpecialOfferModelCopyWith<$Res> {
  _$SpecialOfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? numOfBrands = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      numOfBrands: null == numOfBrands
          ? _value.numOfBrands
          : numOfBrands // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialOfferModelImplCopyWith<$Res>
    implements $SpecialOfferModelCopyWith<$Res> {
  factory _$$SpecialOfferModelImplCopyWith(_$SpecialOfferModelImpl value,
          $Res Function(_$SpecialOfferModelImpl) then) =
      __$$SpecialOfferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String category,
      @JsonKey(name: FirebaseFieldName.numOfBrands) int numOfBrands,
      String image});
}

/// @nodoc
class __$$SpecialOfferModelImplCopyWithImpl<$Res>
    extends _$SpecialOfferModelCopyWithImpl<$Res, _$SpecialOfferModelImpl>
    implements _$$SpecialOfferModelImplCopyWith<$Res> {
  __$$SpecialOfferModelImplCopyWithImpl(_$SpecialOfferModelImpl _value,
      $Res Function(_$SpecialOfferModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? numOfBrands = null,
    Object? image = null,
  }) {
    return _then(_$SpecialOfferModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      numOfBrands: null == numOfBrands
          ? _value.numOfBrands
          : numOfBrands // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SpecialOfferModelImpl implements _SpecialOfferModel {
  const _$SpecialOfferModelImpl(
      {required this.id,
      required this.category,
      @JsonKey(name: FirebaseFieldName.numOfBrands) required this.numOfBrands,
      required this.image});

  factory _$SpecialOfferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialOfferModelImplFromJson(json);

  @override
  final int id;
  @override
  final String category;
  @override
  @JsonKey(name: FirebaseFieldName.numOfBrands)
  final int numOfBrands;
  @override
  final String image;

  @override
  String toString() {
    return 'SpecialOfferModel(id: $id, category: $category, numOfBrands: $numOfBrands, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialOfferModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.numOfBrands, numOfBrands) ||
                other.numOfBrands == numOfBrands) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, numOfBrands, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialOfferModelImplCopyWith<_$SpecialOfferModelImpl> get copyWith =>
      __$$SpecialOfferModelImplCopyWithImpl<_$SpecialOfferModelImpl>(
          this, _$identity);
}

abstract class _SpecialOfferModel implements SpecialOfferModel {
  const factory _SpecialOfferModel(
      {required final int id,
      required final String category,
      @JsonKey(name: FirebaseFieldName.numOfBrands)
      required final int numOfBrands,
      required final String image}) = _$SpecialOfferModelImpl;

  factory _SpecialOfferModel.fromJson(Map<String, dynamic> json) =
      _$SpecialOfferModelImpl.fromJson;

  @override
  int get id;
  @override
  String get category;
  @override
  @JsonKey(name: FirebaseFieldName.numOfBrands)
  int get numOfBrands;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$SpecialOfferModelImplCopyWith<_$SpecialOfferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
