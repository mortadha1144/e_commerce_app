import 'package:e_commerce_app/core/utils/network/network_exceptions.dart';
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
}