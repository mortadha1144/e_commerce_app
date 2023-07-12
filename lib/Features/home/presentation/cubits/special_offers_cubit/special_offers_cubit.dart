import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/special_offer.dart';
import '../../../data/repos/home_repo.dart';

part 'special_offers_state.dart';

class SpecialOffersCubit extends Cubit<SpecialOffersState> {
  SpecialOffersCubit(this.homeRepo) : super(SpecialOffersInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSpecialOffers() async {
    await homeRepo.fetchSpecialOffers();
    
  }
}
