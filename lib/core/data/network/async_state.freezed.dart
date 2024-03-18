// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AsyncState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateData<T> value) data,
    required TResult Function(AsyncStateIdle<T> value) idle,
    required TResult Function(AsyncStateLoading<T> value) loading,
    required TResult Function(AsyncStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateData<T> value)? data,
    TResult? Function(AsyncStateIdle<T> value)? idle,
    TResult? Function(AsyncStateLoading<T> value)? loading,
    TResult? Function(AsyncStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateData<T> value)? data,
    TResult Function(AsyncStateIdle<T> value)? idle,
    TResult Function(AsyncStateLoading<T> value)? loading,
    TResult Function(AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateCopyWith<T, $Res> {
  factory $AsyncStateCopyWith(
          AsyncState<T> value, $Res Function(AsyncState<T>) then) =
      _$AsyncStateCopyWithImpl<T, $Res, AsyncState<T>>;
}

/// @nodoc
class _$AsyncStateCopyWithImpl<T, $Res, $Val extends AsyncState<T>>
    implements $AsyncStateCopyWith<T, $Res> {
  _$AsyncStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AsyncStateDataImplCopyWith<T, $Res> {
  factory _$$AsyncStateDataImplCopyWith(_$AsyncStateDataImpl<T> value,
          $Res Function(_$AsyncStateDataImpl<T>) then) =
      __$$AsyncStateDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AsyncStateDataImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateDataImpl<T>>
    implements _$$AsyncStateDataImplCopyWith<T, $Res> {
  __$$AsyncStateDataImplCopyWithImpl(_$AsyncStateDataImpl<T> _value,
      $Res Function(_$AsyncStateDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AsyncStateDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AsyncStateDataImpl<T> extends AsyncStateData<T>
    with DiagnosticableTreeMixin {
  const _$AsyncStateDataImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AsyncState<$T>.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncStateDataImplCopyWith<T, _$AsyncStateDataImpl<T>> get copyWith =>
      __$$AsyncStateDataImplCopyWithImpl<T, _$AsyncStateDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateData<T> value) data,
    required TResult Function(AsyncStateIdle<T> value) idle,
    required TResult Function(AsyncStateLoading<T> value) loading,
    required TResult Function(AsyncStateError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateData<T> value)? data,
    TResult? Function(AsyncStateIdle<T> value)? idle,
    TResult? Function(AsyncStateLoading<T> value)? loading,
    TResult? Function(AsyncStateError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateData<T> value)? data,
    TResult Function(AsyncStateIdle<T> value)? idle,
    TResult Function(AsyncStateLoading<T> value)? loading,
    TResult Function(AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AsyncStateData<T> extends AsyncState<T> {
  const factory AsyncStateData(final T data) = _$AsyncStateDataImpl<T>;
  const AsyncStateData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$AsyncStateDataImplCopyWith<T, _$AsyncStateDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncStateIdleImplCopyWith<T, $Res> {
  factory _$$AsyncStateIdleImplCopyWith(_$AsyncStateIdleImpl<T> value,
          $Res Function(_$AsyncStateIdleImpl<T>) then) =
      __$$AsyncStateIdleImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AsyncStateIdleImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateIdleImpl<T>>
    implements _$$AsyncStateIdleImplCopyWith<T, $Res> {
  __$$AsyncStateIdleImplCopyWithImpl(_$AsyncStateIdleImpl<T> _value,
      $Res Function(_$AsyncStateIdleImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AsyncStateIdleImpl<T> extends AsyncStateIdle<T>
    with DiagnosticableTreeMixin {
  const _$AsyncStateIdleImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AsyncState<$T>.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AsyncStateIdleImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateData<T> value) data,
    required TResult Function(AsyncStateIdle<T> value) idle,
    required TResult Function(AsyncStateLoading<T> value) loading,
    required TResult Function(AsyncStateError<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateData<T> value)? data,
    TResult? Function(AsyncStateIdle<T> value)? idle,
    TResult? Function(AsyncStateLoading<T> value)? loading,
    TResult? Function(AsyncStateError<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateData<T> value)? data,
    TResult Function(AsyncStateIdle<T> value)? idle,
    TResult Function(AsyncStateLoading<T> value)? loading,
    TResult Function(AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AsyncStateIdle<T> extends AsyncState<T> {
  const factory AsyncStateIdle() = _$AsyncStateIdleImpl<T>;
  const AsyncStateIdle._() : super._();
}

/// @nodoc
abstract class _$$AsyncStateLoadingImplCopyWith<T, $Res> {
  factory _$$AsyncStateLoadingImplCopyWith(_$AsyncStateLoadingImpl<T> value,
          $Res Function(_$AsyncStateLoadingImpl<T>) then) =
      __$$AsyncStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AsyncStateLoadingImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateLoadingImpl<T>>
    implements _$$AsyncStateLoadingImplCopyWith<T, $Res> {
  __$$AsyncStateLoadingImplCopyWithImpl(_$AsyncStateLoadingImpl<T> _value,
      $Res Function(_$AsyncStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AsyncStateLoadingImpl<T> extends AsyncStateLoading<T>
    with DiagnosticableTreeMixin {
  const _$AsyncStateLoadingImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AsyncState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateData<T> value) data,
    required TResult Function(AsyncStateIdle<T> value) idle,
    required TResult Function(AsyncStateLoading<T> value) loading,
    required TResult Function(AsyncStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateData<T> value)? data,
    TResult? Function(AsyncStateIdle<T> value)? idle,
    TResult? Function(AsyncStateLoading<T> value)? loading,
    TResult? Function(AsyncStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateData<T> value)? data,
    TResult Function(AsyncStateIdle<T> value)? idle,
    TResult Function(AsyncStateLoading<T> value)? loading,
    TResult Function(AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AsyncStateLoading<T> extends AsyncState<T> {
  const factory AsyncStateLoading() = _$AsyncStateLoadingImpl<T>;
  const AsyncStateLoading._() : super._();
}

/// @nodoc
abstract class _$$AsyncStateErrorImplCopyWith<T, $Res> {
  factory _$$AsyncStateErrorImplCopyWith(_$AsyncStateErrorImpl<T> value,
          $Res Function(_$AsyncStateErrorImpl<T>) then) =
      __$$AsyncStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$AsyncStateErrorImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateErrorImpl<T>>
    implements _$$AsyncStateErrorImplCopyWith<T, $Res> {
  __$$AsyncStateErrorImplCopyWithImpl(_$AsyncStateErrorImpl<T> _value,
      $Res Function(_$AsyncStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AsyncStateErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$AsyncStateErrorImpl<T> extends AsyncStateError<T>
    with DiagnosticableTreeMixin {
  const _$AsyncStateErrorImpl(this.error) : super._();

  @override
  final NetworkExceptions error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$T>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AsyncState<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncStateErrorImplCopyWith<T, _$AsyncStateErrorImpl<T>> get copyWith =>
      __$$AsyncStateErrorImplCopyWithImpl<T, _$AsyncStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateData<T> value) data,
    required TResult Function(AsyncStateIdle<T> value) idle,
    required TResult Function(AsyncStateLoading<T> value) loading,
    required TResult Function(AsyncStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateData<T> value)? data,
    TResult? Function(AsyncStateIdle<T> value)? idle,
    TResult? Function(AsyncStateLoading<T> value)? loading,
    TResult? Function(AsyncStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateData<T> value)? data,
    TResult Function(AsyncStateIdle<T> value)? idle,
    TResult Function(AsyncStateLoading<T> value)? loading,
    TResult Function(AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AsyncStateError<T> extends AsyncState<T> {
  const factory AsyncStateError(final NetworkExceptions error) =
      _$AsyncStateErrorImpl<T>;
  const AsyncStateError._() : super._();

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$AsyncStateErrorImplCopyWith<T, _$AsyncStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
