import 'package:e_commerce_app/Features/auth/providers/user_id_provider.dart';
import 'package:e_commerce_app/Features/cart/data/models/cart_item_model.dart';
import 'package:e_commerce_app/Features/cart/providers/cart_provider.dart';
import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/presentation/providers/quantity_provider.dart';
import 'package:e_commerce_app/core/utils/functions/custom_snack_bar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../home/presentation/views/widgets/custom_prodect_details_appbar.dart';
import 'product_details_color_dots.dart';
import 'product_details_description.dart';
import 'product_details_images.dart';
import '../../../../home/presentation/views/widgets/top_rounded_corner.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppBar(rating: product.rating?.rate ?? 0),
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
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * .15,
                            right: SizeConfig.screenWidth * .15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40),
                          ),
                          child: Consumer(
                            builder: (context, ref, child) {
                              final isProductInCart = ref
                                  .watch(cartProvider.notifier)
                                  .contains(product.id!);
                              return CustomButton(
                                text: isProductInCart
                                    ? 'Remove From Cart'
                                    : 'Add to Cart',
                                // isLoading: state.isLoading,
                                onPressed: () async {
                                  final userId = ref.read(userIdProvider);

                                  if (userId == null) {
                                    return;
                                  }

                                  final quantity = ref.watch(quantityProvider);

                                  if (isProductInCart) {
                                    await ref
                                        .read(cartProvider.notifier)
                                        .remove(product.id!)
                                        .then(
                                          (value) => customSnackBar(
                                            context,
                                            'Product Removed from cart successfully',
                                          ),
                                        );
                                  } else {
                                    final cartItem = CartItemModel(
                                      product: product,
                                      quantity: quantity,
                                    );

                                    await ref
                                        .read(cartProvider.notifier)
                                        .add(cartItem)
                                        .then(
                                          (value) => customSnackBar(
                                            context,
                                            'Product Added to cart successfully',
                                          ),
                                        );
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
