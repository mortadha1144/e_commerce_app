import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://fakestoreapi.com/';

  final Dio _dio;

  ApiService(this._dio);

  Future<List<dynamic>> get({required String endPoin}) async {
    var response = await _dio.get('$_baseUrl$endPoin');
    return response.data;
  }
}
