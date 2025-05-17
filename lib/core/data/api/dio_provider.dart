import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:io';
import 'package:dio/io.dart';

part 'dio_provider.g.dart';

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
@riverpod
Dio dio(Ref ref) {
  final dio = Dio();

  final _host =
      Platform.isAndroid ? '10.0.2.2' : 'localhost'; // for android emulator

  dio.options.baseUrl = 'https://$_host:5001/api';

  // Add certificate bypass for development
  // allow self-signed certificate
  (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
    final client = HttpClient();
    client.badCertificateCallback = (cert, host, port) => host == _host;
    return client;
  };

  dio.interceptors.addAll([
    AwesomeDioInterceptor(),
    // Authenticator(dio: dio, ref: ref),
  ]);

  // final accessToken = ref.read(authenticationProvider).accessToken;

  // final language = ref.read(appSettingsProvider).locale.languageCode;

  dio.options.headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    // if (accessToken != null) 'Authorization': 'Bearer $accessToken',
    // 'Accept-Language': language,
  };

  return dio;
}
