import 'package:e_commerce_app/Features/home/data/models/product_model.dart';
import 'package:e_commerce_app/Features/home/data/repos/product_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._productRepo) : super(const ProductInitial(1));

  final ProductRepo _productRepo;

  void increment() {
    emit(ProductInitial((state as ProductInitial).number + 1));
  } // Increase the number by one

  void decrement() {
    int count = (state as ProductInitial).number;
    if (count > 1) {
      emit(ProductInitial(count - 1));
    }
  }

  Future<void> addToCart(ProductModel product) async {
    emit(ProductLoading());
    final quantity = (state as ProductInitial).number;
    var result = await _productRepo.addToCart(
      product: product.toJson(),
      quantity: quantity,
    );

    result.fold(
      (fail) => emit(ProductError(fail.errMessage)),
      (success) => emit(ProductLoaded()),
    );
  }
}
