import 'dart:developer';

import 'package:e_commerce_app/core/data/network/network_exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_state.freezed.dart';

typedef AsyncStateCallback<T> = Future<AsyncState<T>>;

@Freezed(
  fromJson: false,
  toJson: false,
)
sealed class AsyncState<T> with _$AsyncState<T> {
  const AsyncState._();
  const factory AsyncState.data(T data) = AsyncStateData<T>;
  const factory AsyncState.idle() = AsyncStateIdle<T>;
  const factory AsyncState.loading() = AsyncStateLoading<T>;
  const factory AsyncState.error(NetworkExceptions error) = AsyncStateError<T>;

  static Future<AsyncState<T>> guard<T>(
    Future<T> Function() callback,
  ) async {
    try {
      final data = await callback();
      return AsyncState.data(data);
    } catch (error, stackTrace) {
      if (kDebugMode)
        log(error.toString(), error: error, stackTrace: stackTrace);
      return AsyncState.error(NetworkExceptions.getDioException(error));
    }
  }

  bool get isLoading => this is AsyncStateLoading<T>;
}

mixin AsyncStateMixin<T> {
  AsyncState<T> get state;
  set state(AsyncState<T> value);

  AsyncStateIdle<T> idle() => AsyncStateIdle<T>();

  Future<AsyncState<T>> handle(Future<T> Function() callback) async {
    state = const AsyncState.loading();
    return state = await AsyncState.guard(callback);
  }
}
