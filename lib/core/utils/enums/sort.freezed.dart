// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sort {
  String get value;
  bool get descending;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SortCopyWith<Sort> get copyWith =>
      _$SortCopyWithImpl<Sort>(this as Sort, _$identity);

  /// Serializes this Sort to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Sort &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.descending, descending) ||
                other.descending == descending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, descending);

  @override
  String toString() {
    return 'Sort(value: $value, descending: $descending)';
  }
}

/// @nodoc
abstract mixin class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) _then) =
      _$SortCopyWithImpl;
  @useResult
  $Res call({String value, bool descending});
}

/// @nodoc
class _$SortCopyWithImpl<$Res> implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._self, this._then);

  final Sort _self;
  final $Res Function(Sort) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? descending = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      descending: null == descending
          ? _self.descending
          : descending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Sort extends Sort {
  const _Sort({required this.value, required this.descending}) : super._();
  factory _Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);

  @override
  final String value;
  @override
  final bool descending;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SortCopyWith<_Sort> get copyWith =>
      __$SortCopyWithImpl<_Sort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SortToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sort &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.descending, descending) ||
                other.descending == descending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, descending);

  @override
  String toString() {
    return 'Sort(value: $value, descending: $descending)';
  }
}

/// @nodoc
abstract mixin class _$SortCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$SortCopyWith(_Sort value, $Res Function(_Sort) _then) =
      __$SortCopyWithImpl;
  @override
  @useResult
  $Res call({String value, bool descending});
}

/// @nodoc
class __$SortCopyWithImpl<$Res> implements _$SortCopyWith<$Res> {
  __$SortCopyWithImpl(this._self, this._then);

  final _Sort _self;
  final $Res Function(_Sort) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
    Object? descending = null,
  }) {
    return _then(_Sort(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      descending: null == descending
          ? _self.descending
          : descending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
