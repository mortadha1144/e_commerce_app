// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'ccf29964375ddacd3f18a0be47b52151f47e41b5';

/// Provides a [Dio] instance using the Riverpod package.
///
/// This function is annotated with `@riverpod` to indicate that it is a Riverpod provider.
/// It creates and configures a `Dio` instance with the necessary options and interceptors.
///
/// Usage:
/// ```dart
/// final dio = ref.read(dioProvider);
/// ```
///
/// The following configurations are applied:
/// - `baseUrl`: Set to the value of `Env.baseUrl`.
/// - `interceptors`: Adds `AwesomeDioInterceptor` and `Authenticator`.
/// - `headers`: Sets the `Content-Type`, `Accept`, `Authorization` (if `accessToken` is available), and `Accept-Language`.
///
/// Copied from [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = AutoDisposeProviderRef<Dio>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
