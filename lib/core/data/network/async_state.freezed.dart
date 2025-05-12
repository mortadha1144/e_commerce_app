// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsyncState<T> implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AsyncState<$T>'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AsyncState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>()';
  }
}

/// @nodoc
class $AsyncStateCopyWith<T, $Res> {
  $AsyncStateCopyWith(AsyncState<T> _, $Res Function(AsyncState<T>) __);
}

/// @nodoc

class AsyncStateData<T> extends AsyncState<T> with DiagnosticableTreeMixin {
  const AsyncStateData(this.data) : super._();

  final T data;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AsyncStateDataCopyWith<T, AsyncStateData<T>> get copyWith =>
      _$AsyncStateDataCopyWithImpl<T, AsyncStateData<T>>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AsyncState<$T>.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AsyncStateData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.data(data: $data)';
  }
}

/// @nodoc
abstract mixin class $AsyncStateDataCopyWith<T, $Res>
    implements $AsyncStateCopyWith<T, $Res> {
  factory $AsyncStateDataCopyWith(
          AsyncStateData<T> value, $Res Function(AsyncStateData<T>) _then) =
      _$AsyncStateDataCopyWithImpl;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$AsyncStateDataCopyWithImpl<T, $Res>
    implements $AsyncStateDataCopyWith<T, $Res> {
  _$AsyncStateDataCopyWithImpl(this._self, this._then);

  final AsyncStateData<T> _self;
  final $Res Function(AsyncStateData<T>) _then;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(AsyncStateData<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class AsyncStateIdle<T> extends AsyncState<T> with DiagnosticableTreeMixin {
  const AsyncStateIdle() : super._();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AsyncState<$T>.idle'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AsyncStateIdle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.idle()';
  }
}

/// @nodoc
class $AsyncStateIdleCopyWith<T, $Res> implements $AsyncStateCopyWith<T, $Res> {
  $AsyncStateIdleCopyWith(
      AsyncStateIdle<T> _, $Res Function(AsyncStateIdle<T>) __);
}

/// @nodoc
class _$AsyncStateIdleCopyWithImpl<T, $Res>
    implements $AsyncStateIdleCopyWith<T, $Res> {
  _$AsyncStateIdleCopyWithImpl(this._self, this._then);

  final AsyncStateIdle<T> _self;
  final $Res Function(AsyncStateIdle<T>) _then;
}

/// @nodoc

class AsyncStateLoading<T> extends AsyncState<T> with DiagnosticableTreeMixin {
  const AsyncStateLoading() : super._();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AsyncState<$T>.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AsyncStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.loading()';
  }
}

/// @nodoc
class $AsyncStateLoadingCopyWith<T, $Res>
    implements $AsyncStateCopyWith<T, $Res> {
  $AsyncStateLoadingCopyWith(
      AsyncStateLoading<T> _, $Res Function(AsyncStateLoading<T>) __);
}

/// @nodoc
class _$AsyncStateLoadingCopyWithImpl<T, $Res>
    implements $AsyncStateLoadingCopyWith<T, $Res> {
  _$AsyncStateLoadingCopyWithImpl(this._self, this._then);

  final AsyncStateLoading<T> _self;
  final $Res Function(AsyncStateLoading<T>) _then;
}

/// @nodoc

class AsyncStateError<T> extends AsyncState<T> with DiagnosticableTreeMixin {
  const AsyncStateError(this.error) : super._();

  final NetworkExceptions error;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AsyncStateErrorCopyWith<T, AsyncStateError<T>> get copyWith =>
      _$AsyncStateErrorCopyWithImpl<T, AsyncStateError<T>>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AsyncState<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AsyncStateError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AsyncStateErrorCopyWith<T, $Res>
    implements $AsyncStateCopyWith<T, $Res> {
  factory $AsyncStateErrorCopyWith(
          AsyncStateError<T> value, $Res Function(AsyncStateError<T>) _then) =
      _$AsyncStateErrorCopyWithImpl;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class _$AsyncStateErrorCopyWithImpl<T, $Res>
    implements $AsyncStateErrorCopyWith<T, $Res> {
  _$AsyncStateErrorCopyWithImpl(this._self, this._then);

  final AsyncStateError<T> _self;
  final $Res Function(AsyncStateError<T>) _then;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AsyncStateError<T>(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

// dart format on
