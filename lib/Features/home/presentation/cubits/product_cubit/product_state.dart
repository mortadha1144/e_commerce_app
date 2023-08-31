part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {
  const ProductInitial();
  @override
  List<Object?> get props => [];
}

class ProductLoading extends ProductState {
  const ProductLoading();
  @override
  List<Object?> get props => [];
}

class ProductLoaded extends ProductState {
  const ProductLoaded();
  @override
  List<Object?> get props => [];
}

class ProductQuantityChanged extends ProductState {
  final int quantity;
  const ProductQuantityChanged(this.quantity);
  @override
  List<Object?> get props => [quantity];
}

class ProductError extends ProductState {
  final String message;
  const ProductError({required this.message});
  @override
  List<Object?> get props => [message];
}
