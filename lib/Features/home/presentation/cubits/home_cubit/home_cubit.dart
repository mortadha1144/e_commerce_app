import 'package:e_commerce_app/Features/home/data/models/category_model.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/home/data/models/special_offer_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());

  final HomeRepo homeRepo;

  Future<void> fetchHomeData() async {
    emit(HomeLoading());
    var result = await homeRepo.fetchHomeData();

    result.fold(
      (failure) => emit(HomeError(message: failure.errMessage)),
      (success) {
        final categories = success[0] as List<CategoryModel>;
        final specialOffers = success[1] as List<SpecialOfferModel>;
        final products = success[2] as List<ProductModel>;
        emit(
          HomeSuccess(
            categories: categories,
            specialOffers: specialOffers,
            products: products,
          ),
        );
      },
    );
  }
}
