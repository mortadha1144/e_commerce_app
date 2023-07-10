import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_app/Features/home/data/models/product/product.dart';
import 'package:e_commerce_app/core/errors/failures.dart';

import '../../../../core/utils/api_service.dart';

class HomeRepo {

  final ApiService apiService;

  HomeRepo(this.apiService);
  Future<Either<Failure, List<Product>>> fetchPopularProducts() async{
try {
      var data = await apiService.get(
          endPoin:
              'products');
      List<Product> products = [];

      for (var item in data) {
        products.add(Product.fromJson(item));
      }

      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
