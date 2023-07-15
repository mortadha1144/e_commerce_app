part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final List<CategoryModel> categories;
  final List<SpecialOfferModel> specialOffers;
  final List<ProductModel> products;
  const HomeSuccess(
      {required this.specialOffers,
      required this.products,
      required this.categories});
  @override
  List<Object> get props => [categories];
}

class HomeError extends HomeState {
  final String message;
  const HomeError({required this.message});
  @override
  List<Object> get props => [message];
}
