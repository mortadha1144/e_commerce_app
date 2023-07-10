import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'popular_products_state.dart';

class PopularProductsCubit extends Cubit<PopularProductsState> {
  PopularProductsCubit() : super(PopularProductsInitial());
}
