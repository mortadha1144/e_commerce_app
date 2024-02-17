// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartItemModel {
  ProductModel get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res, CartItemModel>;
  @useResult
  $Res call({ProductModel product, int quantity});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res, $Val extends CartItemModel>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$CartItemModelImplCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$$CartItemModelImplCopyWith(
          _$CartItemModelImpl value, $Res Function(_$CartItemModelImpl) then) =
      __$$CartItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product, int quantity});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$CartItemModelImplCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res, _$CartItemModelImpl>
    implements _$$CartItemModelImplCopyWith<$Res> {
  __$$CartItemModelImplCopyWithImpl(
      _$CartItemModelImpl _value, $Res Function(_$CartItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$CartItemModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemModelImpl implements _CartItemModel {
  const _$CartItemModelImpl({required this.product, required this.quantity});

  factory _$CartItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemModelImplFromJson(json);

  @override
  final ProductModel product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartItemModel(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemModelImplCopyWith<_$CartItemModelImpl> get copyWith =>
      __$$CartItemModelImplCopyWithImpl<_$CartItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemModelImplToJson(
      this,
    );
  }
}

abstract class _CartItemModel implements CartItemModel {
  const factory _CartItemModel(
      {required final ProductModel product,
      required final int quantity}) = _$CartItemModelImpl;

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$CartItemModelImpl.fromJson;

  @override
  ProductModel get product;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$CartItemModelImplCopyWith<_$CartItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
