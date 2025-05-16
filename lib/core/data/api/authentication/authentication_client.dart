import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/data/api/authentication/login_request.dart';
import 'package:e_commerce_app/core/data/api/authentication/login_response.dart';
import 'package:e_commerce_app/core/data/api/authentication/register_request_body.dart';
import 'package:e_commerce_app/core/data/api/authentication/register_response.dart';
import 'package:e_commerce_app/core/data/api/common/api_response.dart';
import 'package:e_commerce_app/core/data/api/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_client.g.dart';

@riverpod
AuthenticationClient authenticationClient(Ref ref) {
  final dio = ref.read(dioProvider);
  return AuthenticationClient(dio);
}

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String? baseUrl}) =
      _AuthenticationClient;

  @POST('/Auth/login')
  Future<HttpResponse<ApiResponse<LoginResponse>>> login(
    @Body() LoginRequest request,
  );

  @POST('/Auth/register')
  Future<HttpResponse<ApiResponse<RegisterResponse>>> register(
    @Body() RegisterRequestBody request,
  );
}
