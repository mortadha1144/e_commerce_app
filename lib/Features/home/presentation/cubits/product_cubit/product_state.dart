part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  final int number;
  const ProductState(this.number);

  @override
  List<Object?> get props => [number];
}
class ProductInitial extends ProductState {
   const ProductInitial(super.number);
}
