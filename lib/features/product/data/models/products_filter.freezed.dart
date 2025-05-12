// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsFilter {
  NamedObject? get category;
  NamedObject? get subCategory;
  Sort? get sort;

  /// Create a copy of ProductsFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductsFilterCopyWith<ProductsFilter> get copyWith =>
      _$ProductsFilterCopyWithImpl<ProductsFilter>(
          this as ProductsFilter, _$identity);

  /// Serializes this ProductsFilter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsFilter &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, subCategory, sort);

  @override
  String toString() {
    return 'ProductsFilter(category: $category, subCategory: $subCategory, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class $ProductsFilterCopyWith<$Res> {
  factory $ProductsFilterCopyWith(
          ProductsFilter value, $Res Function(ProductsFilter) _then) =
      _$ProductsFilterCopyWithImpl;
  @useResult
  $Res call({NamedObject? category, NamedObject? subCategory, Sort? sort});

  $SortCopyWith<$Res>? get sort;
}

/// @nodoc
class _$ProductsFilterCopyWithImpl<$Res>
    implements $ProductsFilterCopyWith<$Res> {
  _$ProductsFilterCopyWithImpl(this._self, this._then);

  final ProductsFilter _self;
  final $Res Function(ProductsFilter) _then;

  /// Create a copy of ProductsFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? sort = freezed,
  }) {
    return _then(_self.copyWith(
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as NamedObject?,
      subCategory: freezed == subCategory
          ? _self.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as NamedObject?,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
    ));
  }

  /// Create a copy of ProductsFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res>? get sort {
    if (_self.sort == null) {
      return null;
    }

    return $SortCopyWith<$Res>(_self.sort!, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ProductsFilter implements ProductsFilter {
  const _ProductsFilter({this.category, this.subCategory, this.sort});
  factory _ProductsFilter.fromJson(Map<String, dynamic> json) =>
      _$ProductsFilterFromJson(json);

  @override
  final NamedObject? category;
  @override
  final NamedObject? subCategory;
  @override
  final Sort? sort;

  /// Create a copy of ProductsFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductsFilterCopyWith<_ProductsFilter> get copyWith =>
      __$ProductsFilterCopyWithImpl<_ProductsFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductsFilterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsFilter &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, subCategory, sort);

  @override
  String toString() {
    return 'ProductsFilter(category: $category, subCategory: $subCategory, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class _$ProductsFilterCopyWith<$Res>
    implements $ProductsFilterCopyWith<$Res> {
  factory _$ProductsFilterCopyWith(
          _ProductsFilter value, $Res Function(_ProductsFilter) _then) =
      __$ProductsFilterCopyWithImpl;
  @override
  @useResult
  $Res call({NamedObject? category, NamedObject? subCategory, Sort? sort});

  @override
  $SortCopyWith<$Res>? get sort;
}

/// @nodoc
class __$ProductsFilterCopyWithImpl<$Res>
    implements _$ProductsFilterCopyWith<$Res> {
  __$ProductsFilterCopyWithImpl(this._self, this._then);

  final _ProductsFilter _self;
  final $Res Function(_ProductsFilter) _then;

  /// Create a copy of ProductsFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? sort = freezed,
  }) {
    return _then(_ProductsFilter(
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as NamedObject?,
      subCategory: freezed == subCategory
          ? _self.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as NamedObject?,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
    ));
  }

  /// Create a copy of ProductsFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res>? get sort {
    if (_self.sort == null) {
      return null;
    }

    return $SortCopyWith<$Res>(_self.sort!, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

// dart format on
