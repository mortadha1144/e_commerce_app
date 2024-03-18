// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductOrder {
  int get productId => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductOrderCopyWith<ProductOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOrderCopyWith<$Res> {
  factory $ProductOrderCopyWith(
          ProductOrder value, $Res Function(ProductOrder) then) =
      _$ProductOrderCopyWithImpl<$Res, ProductOrder>;
  @useResult
  $Res call({int productId, int qty});
}

/// @nodoc
class _$ProductOrderCopyWithImpl<$Res, $Val extends ProductOrder>
    implements $ProductOrderCopyWith<$Res> {
  _$ProductOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductOrderImplCopyWith<$Res>
    implements $ProductOrderCopyWith<$Res> {
  factory _$$ProductOrderImplCopyWith(
          _$ProductOrderImpl value, $Res Function(_$ProductOrderImpl) then) =
      __$$ProductOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, int qty});
}

/// @nodoc
class __$$ProductOrderImplCopyWithImpl<$Res>
    extends _$ProductOrderCopyWithImpl<$Res, _$ProductOrderImpl>
    implements _$$ProductOrderImplCopyWith<$Res> {
  __$$ProductOrderImplCopyWithImpl(
      _$ProductOrderImpl _value, $Res Function(_$ProductOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? qty = null,
  }) {
    return _then(_$ProductOrderImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, createToJson: true, createFactory: false)
class _$ProductOrderImpl implements _ProductOrder {
  const _$ProductOrderImpl({required this.productId, required this.qty});

  @override
  final int productId;
  @override
  final int qty;

  @override
  String toString() {
    return 'ProductOrder(productId: $productId, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOrderImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOrderImplCopyWith<_$ProductOrderImpl> get copyWith =>
      __$$ProductOrderImplCopyWithImpl<_$ProductOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOrderImplToJson(
      this,
    );
  }
}

abstract class _ProductOrder implements ProductOrder {
  const factory _ProductOrder(
      {required final int productId,
      required final int qty}) = _$ProductOrderImpl;

  @override
  int get productId;
  @override
  int get qty;
  @override
  @JsonKey(ignore: true)
  _$$ProductOrderImplCopyWith<_$ProductOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
