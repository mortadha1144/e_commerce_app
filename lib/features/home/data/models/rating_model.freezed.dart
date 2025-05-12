// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RatingModel {
  double get rate;
  int get count;

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<RatingModel> get copyWith =>
      _$RatingModelCopyWithImpl<RatingModel>(this as RatingModel, _$identity);

  /// Serializes this RatingModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RatingModel &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  @override
  String toString() {
    return 'RatingModel(rate: $rate, count: $count)';
  }
}

/// @nodoc
abstract mixin class $RatingModelCopyWith<$Res> {
  factory $RatingModelCopyWith(
          RatingModel value, $Res Function(RatingModel) _then) =
      _$RatingModelCopyWithImpl;
  @useResult
  $Res call({double rate, int count});
}

/// @nodoc
class _$RatingModelCopyWithImpl<$Res> implements $RatingModelCopyWith<$Res> {
  _$RatingModelCopyWithImpl(this._self, this._then);

  final RatingModel _self;
  final $Res Function(RatingModel) _then;

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_self.copyWith(
      rate: null == rate
          ? _self.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RatingModel implements RatingModel {
  const _RatingModel({required this.rate, required this.count});
  factory _RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);

  @override
  final double rate;
  @override
  final int count;

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RatingModelCopyWith<_RatingModel> get copyWith =>
      __$RatingModelCopyWithImpl<_RatingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RatingModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RatingModel &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  @override
  String toString() {
    return 'RatingModel(rate: $rate, count: $count)';
  }
}

/// @nodoc
abstract mixin class _$RatingModelCopyWith<$Res>
    implements $RatingModelCopyWith<$Res> {
  factory _$RatingModelCopyWith(
          _RatingModel value, $Res Function(_RatingModel) _then) =
      __$RatingModelCopyWithImpl;
  @override
  @useResult
  $Res call({double rate, int count});
}

/// @nodoc
class __$RatingModelCopyWithImpl<$Res> implements _$RatingModelCopyWith<$Res> {
  __$RatingModelCopyWithImpl(this._self, this._then);

  final _RatingModel _self;
  final $Res Function(_RatingModel) _then;

  /// Create a copy of RatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_RatingModel(
      rate: null == rate
          ? _self.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
