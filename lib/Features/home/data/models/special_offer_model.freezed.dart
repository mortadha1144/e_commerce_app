// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpecialOfferModel {
  int get id;
  NamedObject? get category;
  NamedObject? get subCategory;
  int get nofBrands;
  String get image;

  /// Create a copy of SpecialOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpecialOfferModelCopyWith<SpecialOfferModel> get copyWith =>
      _$SpecialOfferModelCopyWithImpl<SpecialOfferModel>(
          this as SpecialOfferModel, _$identity);

  /// Serializes this SpecialOfferModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpecialOfferModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.nofBrands, nofBrands) ||
                other.nofBrands == nofBrands) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, subCategory, nofBrands, image);

  @override
  String toString() {
    return 'SpecialOfferModel(id: $id, category: $category, subCategory: $subCategory, nofBrands: $nofBrands, image: $image)';
  }
}

/// @nodoc
abstract mixin class $SpecialOfferModelCopyWith<$Res> {
  factory $SpecialOfferModelCopyWith(
          SpecialOfferModel value, $Res Function(SpecialOfferModel) _then) =
      _$SpecialOfferModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      NamedObject? category,
      NamedObject? subCategory,
      int nofBrands,
      String image});
}

/// @nodoc
class _$SpecialOfferModelCopyWithImpl<$Res>
    implements $SpecialOfferModelCopyWith<$Res> {
  _$SpecialOfferModelCopyWithImpl(this._self, this._then);

  final SpecialOfferModel _self;
  final $Res Function(SpecialOfferModel) _then;

  /// Create a copy of SpecialOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? nofBrands = null,
    Object? image = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as NamedObject?,
      subCategory: freezed == subCategory
          ? _self.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as NamedObject?,
      nofBrands: null == nofBrands
          ? _self.nofBrands
          : nofBrands // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpecialOfferModel implements SpecialOfferModel {
  const _SpecialOfferModel(
      {required this.id,
      required this.category,
      required this.subCategory,
      required this.nofBrands,
      required this.image});
  factory _SpecialOfferModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialOfferModelFromJson(json);

  @override
  final int id;
  @override
  final NamedObject? category;
  @override
  final NamedObject? subCategory;
  @override
  final int nofBrands;
  @override
  final String image;

  /// Create a copy of SpecialOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpecialOfferModelCopyWith<_SpecialOfferModel> get copyWith =>
      __$SpecialOfferModelCopyWithImpl<_SpecialOfferModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpecialOfferModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpecialOfferModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.nofBrands, nofBrands) ||
                other.nofBrands == nofBrands) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, subCategory, nofBrands, image);

  @override
  String toString() {
    return 'SpecialOfferModel(id: $id, category: $category, subCategory: $subCategory, nofBrands: $nofBrands, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$SpecialOfferModelCopyWith<$Res>
    implements $SpecialOfferModelCopyWith<$Res> {
  factory _$SpecialOfferModelCopyWith(
          _SpecialOfferModel value, $Res Function(_SpecialOfferModel) _then) =
      __$SpecialOfferModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      NamedObject? category,
      NamedObject? subCategory,
      int nofBrands,
      String image});
}

/// @nodoc
class __$SpecialOfferModelCopyWithImpl<$Res>
    implements _$SpecialOfferModelCopyWith<$Res> {
  __$SpecialOfferModelCopyWithImpl(this._self, this._then);

  final _SpecialOfferModel _self;
  final $Res Function(_SpecialOfferModel) _then;

  /// Create a copy of SpecialOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? nofBrands = null,
    Object? image = null,
  }) {
    return _then(_SpecialOfferModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as NamedObject?,
      subCategory: freezed == subCategory
          ? _self.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as NamedObject?,
      nofBrands: null == nofBrands
          ? _self.nofBrands
          : nofBrands // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
