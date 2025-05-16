// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'developer_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeveloperState {
  String? get pageName;
  VoidCallback? get onLongPressed;
  Widget? get currentPageTools;

  /// Create a copy of DeveloperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeveloperStateCopyWith<DeveloperState> get copyWith =>
      _$DeveloperStateCopyWithImpl<DeveloperState>(
          this as DeveloperState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeveloperState &&
            (identical(other.pageName, pageName) ||
                other.pageName == pageName) &&
            (identical(other.onLongPressed, onLongPressed) ||
                other.onLongPressed == onLongPressed) &&
            (identical(other.currentPageTools, currentPageTools) ||
                other.currentPageTools == currentPageTools));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageName, onLongPressed, currentPageTools);

  @override
  String toString() {
    return 'DeveloperState(pageName: $pageName, onLongPressed: $onLongPressed, currentPageTools: $currentPageTools)';
  }
}

/// @nodoc
abstract mixin class $DeveloperStateCopyWith<$Res> {
  factory $DeveloperStateCopyWith(
          DeveloperState value, $Res Function(DeveloperState) _then) =
      _$DeveloperStateCopyWithImpl;
  @useResult
  $Res call(
      {String? pageName,
      VoidCallback? onLongPressed,
      Widget? currentPageTools});
}

/// @nodoc
class _$DeveloperStateCopyWithImpl<$Res>
    implements $DeveloperStateCopyWith<$Res> {
  _$DeveloperStateCopyWithImpl(this._self, this._then);

  final DeveloperState _self;
  final $Res Function(DeveloperState) _then;

  /// Create a copy of DeveloperState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageName = freezed,
    Object? onLongPressed = freezed,
    Object? currentPageTools = freezed,
  }) {
    return _then(_self.copyWith(
      pageName: freezed == pageName
          ? _self.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String?,
      onLongPressed: freezed == onLongPressed
          ? _self.onLongPressed
          : onLongPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      currentPageTools: freezed == currentPageTools
          ? _self.currentPageTools
          : currentPageTools // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _DeveloperState extends DeveloperState {
  const _DeveloperState(
      {this.pageName, this.onLongPressed, this.currentPageTools})
      : super._();

  @override
  final String? pageName;
  @override
  final VoidCallback? onLongPressed;
  @override
  final Widget? currentPageTools;

  /// Create a copy of DeveloperState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeveloperStateCopyWith<_DeveloperState> get copyWith =>
      __$DeveloperStateCopyWithImpl<_DeveloperState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeveloperState &&
            (identical(other.pageName, pageName) ||
                other.pageName == pageName) &&
            (identical(other.onLongPressed, onLongPressed) ||
                other.onLongPressed == onLongPressed) &&
            (identical(other.currentPageTools, currentPageTools) ||
                other.currentPageTools == currentPageTools));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageName, onLongPressed, currentPageTools);

  @override
  String toString() {
    return 'DeveloperState(pageName: $pageName, onLongPressed: $onLongPressed, currentPageTools: $currentPageTools)';
  }
}

/// @nodoc
abstract mixin class _$DeveloperStateCopyWith<$Res>
    implements $DeveloperStateCopyWith<$Res> {
  factory _$DeveloperStateCopyWith(
          _DeveloperState value, $Res Function(_DeveloperState) _then) =
      __$DeveloperStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? pageName,
      VoidCallback? onLongPressed,
      Widget? currentPageTools});
}

/// @nodoc
class __$DeveloperStateCopyWithImpl<$Res>
    implements _$DeveloperStateCopyWith<$Res> {
  __$DeveloperStateCopyWithImpl(this._self, this._then);

  final _DeveloperState _self;
  final $Res Function(_DeveloperState) _then;

  /// Create a copy of DeveloperState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageName = freezed,
    Object? onLongPressed = freezed,
    Object? currentPageTools = freezed,
  }) {
    return _then(_DeveloperState(
      pageName: freezed == pageName
          ? _self.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String?,
      onLongPressed: freezed == onLongPressed
          ? _self.onLongPressed
          : onLongPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      currentPageTools: freezed == currentPageTools
          ? _self.currentPageTools
          : currentPageTools // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

// dart format on
