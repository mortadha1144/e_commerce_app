import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial(1));

  void increment() {
    emit(ProductInitial(state.number + 1));
  } // Increase the number by one

  void decrement() {
    if (state.number > 1) {
      emit(ProductInitial(state.number - 1));
    }
  }
}
