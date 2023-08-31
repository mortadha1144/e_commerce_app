import 'package:e_commerce_app/Features/home/data/models/product_model.dart';
import 'package:e_commerce_app/Features/home/data/repos/product_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._productRepo) : super(const ProductInitial());

  final ProductRepo _productRepo;

  int _quantity = 1;

  int get quantity => _quantity;

  void increment() {
    _quantity++;
    emit(ProductQuantityChanged(quantity));
  } // Increase the number by one

  void decrement() {
    if (_quantity > 1) {
      _quantity--;
      emit(ProductQuantityChanged(quantity));
    }
  }

  Future<void> addToCart(ProductModel product) async {
    emit(const ProductLoading());

    var result = await _productRepo.addToCart(
      product: product.toJson(),
      quantity: _quantity,
    );

    result.fold(
      (fail) {
        emit(ProductError(message: fail.errMessage));
      },
      (success) => emit(const ProductLoaded()),
    );
  }
}
