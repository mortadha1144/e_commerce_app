part of 'special_offers_cubit.dart';

abstract class SpecialOffersState extends Equatable {
  const SpecialOffersState();

  @override
  List<Object> get props => [];
}

class SpecialOffersInitial extends SpecialOffersState {}
class SpecialOffersLoading extends SpecialOffersState {}
class SpecialOffersLoaded extends SpecialOffersState {
  final List<SpecialOffer> specialOffers;
  const SpecialOffersLoaded({required this.specialOffers});
  @override
  List<Object> get props => [specialOffers];
  }
  class SpecialOffersError extends SpecialOffersState {
    final String message;
    const SpecialOffersError({required this.message});
    @override
    List<Object> get props => [message];
    }

