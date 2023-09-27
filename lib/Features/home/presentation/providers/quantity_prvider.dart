import 'package:e_commerce_app/Features/home/presentation/states/quantity_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final quantityProvider =
    NotifierProvider<QuantityNorifier, int>(QuantityNorifier.new);
