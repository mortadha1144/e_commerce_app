// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Todo {
  Nested get nested;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoCopyWith<Todo> get copyWith =>
      _$TodoCopyWithImpl<Todo>(this as Todo, _$identity);

  /// Serializes this Todo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Todo &&
            (identical(other.nested, nested) || other.nested == nested));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nested);

  @override
  String toString() {
    return 'Todo(nested: $nested)';
  }
}

/// @nodoc
abstract mixin class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) _then) =
      _$TodoCopyWithImpl;
  @useResult
  $Res call({Nested nested});

  $NestedCopyWith<$Res> get nested;
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._self, this._then);

  final Todo _self;
  final $Res Function(Todo) _then;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nested = null,
  }) {
    return _then(_self.copyWith(
      nested: null == nested
          ? _self.nested
          : nested // ignore: cast_nullable_to_non_nullable
              as Nested,
    ));
  }

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NestedCopyWith<$Res> get nested {
    return $NestedCopyWith<$Res>(_self.nested, (value) {
      return _then(_self.copyWith(nested: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Todo implements Todo {
  const _Todo({required this.nested});
  factory _Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  @override
  final Nested nested;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todo &&
            (identical(other.nested, nested) || other.nested == nested));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nested);

  @override
  String toString() {
    return 'Todo(nested: $nested)';
  }
}

/// @nodoc
abstract mixin class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) _then) =
      __$TodoCopyWithImpl;
  @override
  @useResult
  $Res call({Nested nested});

  @override
  $NestedCopyWith<$Res> get nested;
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(this._self, this._then);

  final _Todo _self;
  final $Res Function(_Todo) _then;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nested = null,
  }) {
    return _then(_Todo(
      nested: null == nested
          ? _self.nested
          : nested // ignore: cast_nullable_to_non_nullable
              as Nested,
    ));
  }

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NestedCopyWith<$Res> get nested {
    return $NestedCopyWith<$Res>(_self.nested, (value) {
      return _then(_self.copyWith(nested: value));
    });
  }
}

/// @nodoc
mixin _$Nested {
  String get id;

  /// Create a copy of Nested
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NestedCopyWith<Nested> get copyWith =>
      _$NestedCopyWithImpl<Nested>(this as Nested, _$identity);

  /// Serializes this Nested to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Nested &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'Nested(id: $id)';
  }
}

/// @nodoc
abstract mixin class $NestedCopyWith<$Res> {
  factory $NestedCopyWith(Nested value, $Res Function(Nested) _then) =
      _$NestedCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$NestedCopyWithImpl<$Res> implements $NestedCopyWith<$Res> {
  _$NestedCopyWithImpl(this._self, this._then);

  final Nested _self;
  final $Res Function(Nested) _then;

  /// Create a copy of Nested
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Nested implements Nested {
  const _Nested({required this.id});
  factory _Nested.fromJson(Map<String, dynamic> json) => _$NestedFromJson(json);

  @override
  final String id;

  /// Create a copy of Nested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NestedCopyWith<_Nested> get copyWith =>
      __$NestedCopyWithImpl<_Nested>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NestedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nested &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'Nested(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$NestedCopyWith<$Res> implements $NestedCopyWith<$Res> {
  factory _$NestedCopyWith(_Nested value, $Res Function(_Nested) _then) =
      __$NestedCopyWithImpl;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$NestedCopyWithImpl<$Res> implements _$NestedCopyWith<$Res> {
  __$NestedCopyWithImpl(this._self, this._then);

  final _Nested _self;
  final $Res Function(_Nested) _then;

  /// Create a copy of Nested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_Nested(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
