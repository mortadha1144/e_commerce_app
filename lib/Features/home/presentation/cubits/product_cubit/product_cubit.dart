import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/data/repos/product_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';
class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._productRepo) : super(const ProductInitial());

  final ProductRepo _productRepo;

  int _quantity = 1;

  int get quantity => _quantity;

  bool _isFavourite = false;

  bool get isFavourite => _isFavourite;

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

  Future<void> checkProductInFavourites(String productId) async {
    emit(const ProductLoading());

    var result = await _productRepo.checkProductInFavourites(
      productId: productId,
    );

    // result.fold(
    //   (fail) {
    //     emit(ProductError(message: fail.errMessage));
    //   },
    //   (success) {
    //     _isFavourite = success;
    //     emit(const ProductLoaded());
    //   },
    // );
  }

  Future<void> addToCart(ProductModel product) async {
    emit(const ProductAddedToCartLoading());

    var result = await _productRepo.addToCart(
      product: product.toJson(),
      quantity: _quantity,
    );

    // result.fold(
    //   (fail) {
    //     emit(ProductAddedToCartError(message: fail.errMessage));
    //   },
    //   (success) => emit(const ProductAddedToCartSuccess()),
    // );
  }

  Future<void> toggleFavourite(ProductModel product) async {
    if (_isFavourite) {
      await removeFromFavourites(product.id.toString());
    } else {
      await addToFavourite(product);
    }
  }

  Future<void> removeFromFavourites(String productId) async {
    var result =
        await _productRepo.removeFromFavourites(productId: productId);
    result.fold(
      (fail) {
        emit(ProductAddToFavoritesError(message: fail.errMessage));
      },
      (success) {
        _isFavourite = !_isFavourite;
        emit(ProductAddToFavoritesSuccess(_isFavourite));
      },
    );
  }

  Future<void> addToFavourite(ProductModel product) async {
    var result = await _productRepo.addToFavourites(product: product.toJson());
    result.fold(
      (fail) {
        emit(ProductAddToFavoritesError(message: fail.errMessage));
      },
      (success) {
        _isFavourite = !_isFavourite;
        emit(ProductAddToFavoritesSuccess(_isFavourite));
      },
    );
  }
}
