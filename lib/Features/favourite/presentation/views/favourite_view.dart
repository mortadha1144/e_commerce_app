import 'package:e_commerce_app/Features/cart/providers/cashed_card_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavouritView extends ConsumerWidget {
  const FavouritView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cashedCardProvider);
    return Center(child: Text(state[0].product.description.toString()));
  }
}
