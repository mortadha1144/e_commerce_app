import 'package:e_commerce_app/core/utils/constants/strings.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/cart/providers/cart_provider.dart';
import 'package:e_commerce_app/features/home/views/widgets/custom_product_details_app_bar.dart';
import 'package:e_commerce_app/features/home/views/widgets/top_rounded_corner.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:e_commerce_app/features/product/providers/quantity_provider.dart';
import 'package:e_commerce_app/features/product/views/widgets/product_details_color_dots.dart';
import 'package:e_commerce_app/features/product/views/widgets/product_details_description.dart';
import 'package:e_commerce_app/features/product/views/widgets/product_details_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFFF5F6F9),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBar(rating: product.rating.rate),
            ProductDetailsImages(product: product),
            TopRoundedCorner(
              color: Colors.white,
              child: Column(
                children: [
                  ProductDetailsDescription(
                    product: product,
                    onPressSeeMore: () {},
                  ),
                  TopRoundedCorner(
                    color: const Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        const ProductDetailsColorDots(),
                        TopRoundedCorner(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Consumer(
                                builder: (context, ref, child) {
                                  return CustomButton(
                                    text: Strings.addToCart,
                                    // isLoading: state.isLoading,
                                    onPressed: () async {
                                      final userId = ref.read(userIdProvider);

                                      if (userId == null) {
                                        return;
                                      }

                                      final quantity =
                                          ref.watch(quantityProvider);
                                      final cartItem = CartItemModel(
                                        product: product,
                                        quantity: quantity,
                                      );

                                      await ref
                                          .read(cartProvider.notifier)
                                          .add(cartItem)
                                          .then((value) =>
                                              context.showSuccessSnackBar(
                                                context.l10n.productAddedToCart,
                                              ));
                                    },
                                  );
                                },
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
