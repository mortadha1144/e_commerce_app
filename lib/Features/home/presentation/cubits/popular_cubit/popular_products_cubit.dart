import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/product_model.dart';
import '../../../data/repos/home_repo.dart';

part 'popular_products_state.dart';
class PopularProductsCubit extends Cubit<PopularProductsState> {
  PopularProductsCubit(this.homeRepo) : super(PopularProductsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchPopularProducts() async {
    emit(PopularProductsLoading());
    var result = await homeRepo.fetchPopularProducts();

    //result.fold(
      //(failure) => emit(PopularProductsFailure(message: failure.errMessagel)),
      // (products) {
      //   emit(PopularProductsSuccess(products: products));
      //   print(products.first.title);
      // },
    //);
  }
}
