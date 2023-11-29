import 'package:e_commerce_app/Features/cart/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavouritView extends ConsumerWidget {
  const FavouritView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartProvider);
    return Center(
        child: Text(state.cartItems[0].product.description.toString()));
  }
}
