import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductInitial(1));

  int count = 1;

  void increment() {
    count++;
    emit(ProductInitial(count));
  } // Increase the number by one

  void decrement() {
    if (count > 1) {
      count--;
      emit(ProductInitial(count));
    }
  }
}
