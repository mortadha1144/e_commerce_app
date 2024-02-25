// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsFilter {
  String? get category => throw _privateConstructorUsedError;
  Sort? get sort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsFilterCopyWith<ProductsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsFilterCopyWith<$Res> {
  factory $ProductsFilterCopyWith(
          ProductsFilter value, $Res Function(ProductsFilter) then) =
      _$ProductsFilterCopyWithImpl<$Res, ProductsFilter>;
  @useResult
  $Res call({String? category, Sort? sort});
}

/// @nodoc
class _$ProductsFilterCopyWithImpl<$Res, $Val extends ProductsFilter>
    implements $ProductsFilterCopyWith<$Res> {
  _$ProductsFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsFilterImplCopyWith<$Res>
    implements $ProductsFilterCopyWith<$Res> {
  factory _$$ProductsFilterImplCopyWith(_$ProductsFilterImpl value,
          $Res Function(_$ProductsFilterImpl) then) =
      __$$ProductsFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? category, Sort? sort});
}

/// @nodoc
class __$$ProductsFilterImplCopyWithImpl<$Res>
    extends _$ProductsFilterCopyWithImpl<$Res, _$ProductsFilterImpl>
    implements _$$ProductsFilterImplCopyWith<$Res> {
  __$$ProductsFilterImplCopyWithImpl(
      _$ProductsFilterImpl _value, $Res Function(_$ProductsFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$ProductsFilterImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
    ));
  }
}

/// @nodoc

class _$ProductsFilterImpl implements _ProductsFilter {
  const _$ProductsFilterImpl({this.category, this.sort});

  @override
  final String? category;
  @override
  final Sort? sort;

  @override
  String toString() {
    return 'ProductsFilter(category: $category, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFilterImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFilterImplCopyWith<_$ProductsFilterImpl> get copyWith =>
      __$$ProductsFilterImplCopyWithImpl<_$ProductsFilterImpl>(
          this, _$identity);
}

abstract class _ProductsFilter implements ProductsFilter {
  const factory _ProductsFilter({final String? category, final Sort? sort}) =
      _$ProductsFilterImpl;

  @override
  String? get category;
  @override
  Sort? get sort;
  @override
  @JsonKey(ignore: true)
  _$$ProductsFilterImplCopyWith<_$ProductsFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
