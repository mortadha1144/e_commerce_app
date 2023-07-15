part of 'popular_products_cubit.dart';

abstract class PopularProductsState extends Equatable {
  const PopularProductsState();

  @override
  List<Object> get props => [];
}

class PopularProductsInitial extends PopularProductsState {}

class PopularProductsLoading extends PopularProductsState {}

class PopularProductsSuccess extends PopularProductsState {
  final List<ProductModel> products;
  const PopularProductsSuccess({required this.products});
  @override
  List<Object> get props => [products];
}

class PopularProductsFailure extends PopularProductsState {
  final String message;
  const PopularProductsFailure({required this.message});
  @override
  List<Object> get props => [message];
}
