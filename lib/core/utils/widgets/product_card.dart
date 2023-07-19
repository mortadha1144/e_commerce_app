import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/Features/home/data/models/product_model.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
    required this.onPress,
  });

  final double width, aspectRatio;
  final ProductModel product;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: onPress,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          // height: getProportionateScreenWidth(220),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: product.image!,
                    placeholder: (context, url) =>
                        const CustomLoadingIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title ?? '',
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              //const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                          //color: product.isFavourite
                          color: false
                              ? kPrimaryColor.withOpacity(.15)
                              : kSecondaryColor.withOpacity(.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        //colorFilter: product.isFavourite
                        colorFilter: false
                            ? const ColorFilter.mode(
                                Color(0xFFFF4848), BlendMode.srcIn)
                            : const ColorFilter.mode(
                                Color(0xFFDBDEE4), BlendMode.srcIn),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
