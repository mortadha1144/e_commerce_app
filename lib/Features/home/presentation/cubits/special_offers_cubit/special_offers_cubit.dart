import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/special_offer.dart';

part 'special_offers_state.dart';

class SpecialOffersCubit extends Cubit<SpecialOffersState> {
  SpecialOffersCubit() : super(SpecialOffersInitial());
}
