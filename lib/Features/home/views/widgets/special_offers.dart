import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/Features/home/data/models/special_offer_model.dart';
import 'package:e_commerce_app/Features/product/data/models/products_filter.dart';
import 'package:e_commerce_app/Features/product/views/paginated_products_list.dart';
import 'package:e_commerce_app/core/utils/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
    required this.specialOffers,
  });

  final List<SpecialOfferModel> specialOffers;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          onPress: () {},
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                specialOffers.length,
                (index) {
                  SpecialOfferModel specialOfferModel = specialOffers[index];
                  return SpecialOfferCard(
                    title: specialOfferModel.category?.name ??
                        specialOfferModel.subCategory?.name ??
                        '',
                    image: specialOfferModel.image,
                    numOfBrands: specialOfferModel.nofBrands,
                    onPress: () {
                      context.pushNativeRoute( PaginatedProductsList(filter: ProductsFilter(
                        category: specialOfferModel.category,
                        subCategory: specialOfferModel.subCategory,
                      )));
                    },
                  );
                },
              ),
              const SizedBox(width: 20)
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.title,
    required this.image,
    required this.numOfBrands,
    required this.onPress,
  });

  final String title, image;
  final int numOfBrands;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: image,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ],
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: '$title\n',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: '$numOfBrands Brands')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
