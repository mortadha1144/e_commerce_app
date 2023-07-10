import 'package:dio/dio.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal(Dio());

  final _baseUrl = 'https://fakestoreapi.com/';

  final Dio _dio;

  factory ApiService() => _instance;

  ApiService._internal(this._dio);

  Future<List<dynamic>> get({required String endPoin}) async {
    var response = await _dio.get('$_baseUrl$endPoin');
    return response.data;
  }
}
