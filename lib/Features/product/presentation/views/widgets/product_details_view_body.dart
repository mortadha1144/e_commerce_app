import 'package:e_commerce_app/Features/product/data/models/product_model.dart';
import 'package:e_commerce_app/Features/product/presentation/providers/add_to_cart_provider.dart';
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
                              ref.listen<AsyncValue<void>>(
                                addToCartProvider,
                                (_, state) => state.whenOrNull(
                                  error: (error, stackTrace) {
                                    customSnackBar(
                                      context,
                                      error as String,
                                    );
                                  },
                                  data: (data) => customSnackBar(
                                    context,
                                    'Product Added to cart successfully',
                                  ),
                                ),
                              );
                              final state = ref.watch(addToCartProvider);
                              return CustomButton(
                                text: 'Add to Cart',
                                isLoading: state is AsyncLoading,
                                onPressed: () => ref
                                    .read(addToCartProvider.notifier)
                                    .addToCart(product: product),

                                //  BlocConsumer<ProductCubit, ProductState>(
                                //   listener: (context, state) {
                                //     if (state is ProductAddedToCartError) {
                                //       customSnackBar(context, state.message);
                                //     } else if (state is ProductAddedToCartSuccess) {
                                //       customSnackBar(context,
                                //           'Product Added to cart successfully');
                                //     }
                                //   },
                                //   builder: (context, state) {
                                //     return CustomButton(
                                //       text: 'Add to Cart',
                                //       isLoading: state is ProductAddedToCartLoading,
                                //       onPressed: () async {
                                //         context
                                //             .read<ProductCubit>()
                                //             .addToCart(product);
                                //       },
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
