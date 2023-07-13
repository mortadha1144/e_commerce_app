import 'package:e_commerce_app/Features/home/data/models/product/product.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/product_card.dart';
import '../../../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key, required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Product',
          onPress: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  products.length,
                  (index) => ProductCard(
                    product: products[index],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                )
              ],
            )),
      ],
    );
  }
}
