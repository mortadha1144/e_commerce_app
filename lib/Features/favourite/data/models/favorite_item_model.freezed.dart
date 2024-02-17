// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteItemModel _$FavoriteItemModelFromJson(Map<String, dynamic> json) {
  return _FavoriteItemModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteItemModel {
  ProductModel get product => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteItemModelCopyWith<FavoriteItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteItemModelCopyWith<$Res> {
  factory $FavoriteItemModelCopyWith(
          FavoriteItemModel value, $Res Function(FavoriteItemModel) then) =
      _$FavoriteItemModelCopyWithImpl<$Res, FavoriteItemModel>;
  @useResult
  $Res call({ProductModel product, DateTime date});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$FavoriteItemModelCopyWithImpl<$Res, $Val extends FavoriteItemModel>
    implements $FavoriteItemModelCopyWith<$Res> {
  _$FavoriteItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteItemModelImplCopyWith<$Res>
    implements $FavoriteItemModelCopyWith<$Res> {
  factory _$$FavoriteItemModelImplCopyWith(_$FavoriteItemModelImpl value,
          $Res Function(_$FavoriteItemModelImpl) then) =
      __$$FavoriteItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product, DateTime date});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$FavoriteItemModelImplCopyWithImpl<$Res>
    extends _$FavoriteItemModelCopyWithImpl<$Res, _$FavoriteItemModelImpl>
    implements _$$FavoriteItemModelImplCopyWith<$Res> {
  __$$FavoriteItemModelImplCopyWithImpl(_$FavoriteItemModelImpl _value,
      $Res Function(_$FavoriteItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? date = null,
  }) {
    return _then(_$FavoriteItemModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteItemModelImpl implements _FavoriteItemModel {
  _$FavoriteItemModelImpl({required this.product, required this.date});

  factory _$FavoriteItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteItemModelImplFromJson(json);

  @override
  final ProductModel product;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'FavoriteItemModel(product: $product, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteItemModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteItemModelImplCopyWith<_$FavoriteItemModelImpl> get copyWith =>
      __$$FavoriteItemModelImplCopyWithImpl<_$FavoriteItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteItemModelImplToJson(
      this,
    );
  }
}

abstract class _FavoriteItemModel implements FavoriteItemModel {
  factory _FavoriteItemModel(
      {required final ProductModel product,
      required final DateTime date}) = _$FavoriteItemModelImpl;

  factory _FavoriteItemModel.fromJson(Map<String, dynamic> json) =
      _$FavoriteItemModelImpl.fromJson;

  @override
  ProductModel get product;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteItemModelImplCopyWith<_$FavoriteItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
