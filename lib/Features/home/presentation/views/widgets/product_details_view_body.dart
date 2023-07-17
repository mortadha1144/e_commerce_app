import 'package:e_commerce_app/Features/home/data/models/product_model.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'product_details_color_dots.dart';
import 'product_details_description.dart';
import 'product_details_images.dart';
import 'top_rounded_corner.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
                          child: CustomButton(
                            text: 'Add to Cart',
                            onPressed: () {},
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
