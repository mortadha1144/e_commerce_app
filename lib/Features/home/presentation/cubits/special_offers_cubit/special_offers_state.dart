part of 'special_offers_cubit.dart';

abstract class SpecialOffersState extends Equatable {
  const SpecialOffersState();

  @override
  List<Object> get props => [];
}

class SpecialOffersInitial extends SpecialOffersState {}

class SpecialOffersLoading extends SpecialOffersState {}

class SpecialOffersSuccess extends SpecialOffersState {
  final List<SpecialOfferModel> specialOffers;
  const SpecialOffersSuccess({required this.specialOffers});
  @override
  List<Object> get props => [specialOffers];
}

class SpecialOffersError extends SpecialOffersState {
  final String message;
  const SpecialOffersError({required this.message});
  @override
  List<Object> get props => [message];
}
