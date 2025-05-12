// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductOrder {
  int get productId;
  int get qty;

  /// Create a copy of ProductOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductOrderCopyWith<ProductOrder> get copyWith =>
      _$ProductOrderCopyWithImpl<ProductOrder>(
          this as ProductOrder, _$identity);

  /// Serializes this ProductOrder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductOrder &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, qty);

  @override
  String toString() {
    return 'ProductOrder(productId: $productId, qty: $qty)';
  }
}

/// @nodoc
abstract mixin class $ProductOrderCopyWith<$Res> {
  factory $ProductOrderCopyWith(
          ProductOrder value, $Res Function(ProductOrder) _then) =
      _$ProductOrderCopyWithImpl;
  @useResult
  $Res call({int productId, int qty});
}

/// @nodoc
class _$ProductOrderCopyWithImpl<$Res> implements $ProductOrderCopyWith<$Res> {
  _$ProductOrderCopyWithImpl(this._self, this._then);

  final ProductOrder _self;
  final $Res Function(ProductOrder) _then;

  /// Create a copy of ProductOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? qty = null,
  }) {
    return _then(_self.copyWith(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _self.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProductOrder implements ProductOrder {
  const _ProductOrder({required this.productId, required this.qty});
  factory _ProductOrder.fromJson(Map<String, dynamic> json) =>
      _$ProductOrderFromJson(json);

  @override
  final int productId;
  @override
  final int qty;

  /// Create a copy of ProductOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductOrderCopyWith<_ProductOrder> get copyWith =>
      __$ProductOrderCopyWithImpl<_ProductOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductOrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductOrder &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, qty);

  @override
  String toString() {
    return 'ProductOrder(productId: $productId, qty: $qty)';
  }
}

/// @nodoc
abstract mixin class _$ProductOrderCopyWith<$Res>
    implements $ProductOrderCopyWith<$Res> {
  factory _$ProductOrderCopyWith(
          _ProductOrder value, $Res Function(_ProductOrder) _then) =
      __$ProductOrderCopyWithImpl;
  @override
  @useResult
  $Res call({int productId, int qty});
}

/// @nodoc
class __$ProductOrderCopyWithImpl<$Res>
    implements _$ProductOrderCopyWith<$Res> {
  __$ProductOrderCopyWithImpl(this._self, this._then);

  final _ProductOrder _self;
  final $Res Function(_ProductOrder) _then;

  /// Create a copy of ProductOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productId = null,
    Object? qty = null,
  }) {
    return _then(_ProductOrder(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _self.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
