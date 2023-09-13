import 'package:e_commerce_app/Features/home/data/models/product_model.dart';
import 'package:e_commerce_app/Features/home/presentation/providers/product_provider.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/product_details_view_body.dart';

class ProductDetailsView extends ConsumerWidget {
  const ProductDetailsView({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myproductProvider = ref.watch(productProvider('500000'));
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFFF5F6F9),
        ),
        child: myproductProvider.when(
          data: (data) => ProductDetailsViewBody(product: product),
          error: (error, stackTrace) => Center(child: Text('$error')),
          loading: () => const CustomLoadingIndicator(),
        ),

        // BlocBuilder<ProductCubit, ProductState>(
        //   builder: (context, state) {
        //     if (state is ProductLoading) {
        //       return const CustomLoadingIndicator();
        //     } else if (state is ProductError) {
        //       return Center(child: Text(state.message));
        //     }
        //     return ProductDetailsViewBody(product: product);
        //   },
        // ),
      ),
    );
  }
}
