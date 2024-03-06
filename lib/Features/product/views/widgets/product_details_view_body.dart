import 'package:e_commerce_app/features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/features/cart/providers/cart_provider.dart';
import 'package:e_commerce_app/features/cart/providers/is_product_in_cart_provider.dart';
import 'package:e_commerce_app/features/product/data/models/product_model.dart';
import 'package:e_commerce_app/features/product/providers/quantity_provider.dart';
import 'package:e_commerce_app/core/utils/constants/strings.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/functions/custom_snack_bar.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../home/views/widgets/custom_product_details_app_bar.dart';
import 'product_details_color_dots.dart';
import 'product_details_description.dart';
import 'product_details_images.dart';
import '../../../home/views/widgets/top_rounded_corner.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 15,
                            bottom: 40,
                          ),
                          child: Consumer(
                            builder: (context, ref, child) {
                              final isProductInCart = ref
                                  .watch(isProductInCartProvider(product.id));
                              return CustomButton(
                                text: isProductInCart
                                    ? Strings.removeFromCart
                                    : Strings.addToCart,
                                // isLoading: state.isLoading,
                                onPressed: () async {
                                  final userId = ref.read(userIdProvider);

                                  if (userId == null) {
                                    return;
                                  }

                                  if (isProductInCart) {
                                    await ref
                                        .read(cartProvider.notifier)
                                        .remove(product.id)
                                        .then(
                                          (value) => customSnackBar(
                                            context,
                                            Strings.productRemovedFromCart,
                                          ),
                                        );
                                  } else {
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
                                  }
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
    );
  }
}
