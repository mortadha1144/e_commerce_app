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

class ProductAddedToCartSuccess extends ProductState {
  const ProductAddedToCartSuccess();
  @override
  List<Object?> get props => [];
}

class ProductAddedToCartError extends ProductState {
  final String message;
  const ProductAddedToCartError({required this.message});
  @override
  List<Object?> get props => [message];
}

class ProductAddedToCartLoading extends ProductState {
  const ProductAddedToCartLoading();
  @override
  List<Object?> get props => [];
}

class ProductAddToFavoritesSuccess extends ProductState {
  final bool isFavourite;
  const ProductAddToFavoritesSuccess(this.isFavourite);
  @override
  List<Object?> get props => [isFavourite];
}

class ProductAddToFavoritesError extends ProductState {
  final String message;
  const ProductAddToFavoritesError({required this.message});
  @override
  List<Object?> get props => [message];
}
