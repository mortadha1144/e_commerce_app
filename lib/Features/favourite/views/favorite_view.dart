import 'package:e_commerce_app/Features/cart/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteView extends ConsumerWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartProvider);
    return const Scaffold(body: Center(child: Text('FavoriteView')));
  }
}
