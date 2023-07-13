import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/special_offer_model.dart';
import '../../../data/repos/home_repo.dart';

part 'special_offers_state.dart';

class SpecialOffersCubit extends Cubit<SpecialOffersState> {
  SpecialOffersCubit(this.homeRepo) : super(SpecialOffersInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSpecialOffers() async {
    emit(SpecialOffersLoading());
    var result = await homeRepo.fetchSpecialOffers();

    //result.fold(
      //(failuer) => emit(SpecialOffersError(message: failuer.errMessagel)),
     // (success) => emit(SpecialOffersSuccess(specialOffers: success)),
    //);
  }
}
