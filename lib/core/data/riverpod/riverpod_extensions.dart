import 'package:e_commerce_app/core/data/network/network_exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef AsyncValueCallback<T> = Future<AsyncValue<T>>;


extension AsyncValueHandle<T> on AsyncValue<T> {
  void whenDataOrError({
    required Function(T data) data,
    required Function(NetworkExceptions error, StackTrace stackTrace) error,
  }) {
    whenOrNull(
      data: (value) {
        if (value is AsyncData<T>) data(value.value);
      },
      error: (e, stackTrace) {
          error(NetworkExceptions.getDioException(e), stackTrace);
      }
    );
  }

  R whenState<R>({
    required R Function(T data) data,
    required R Function() loading,
    required R Function(NetworkExceptions error, StackTrace? stackTrace) error,
  }) {
    return when(
      data: (value) {
        return data(value);
      },
      loading: () {
        return loading();
      },
      error: (e, stackTrace) {
       return error(NetworkExceptions.getDioException(e), stackTrace);
      },
    );
  }
}