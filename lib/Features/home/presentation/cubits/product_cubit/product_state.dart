part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {
  final int number;
  const ProductInitial(this.number);
  @override
  List<Object?> get props => [number];
}
