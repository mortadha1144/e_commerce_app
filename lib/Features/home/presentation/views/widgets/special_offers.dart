import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/Features/home/data/models/special_offer_model.dart';
import 'package:flutter/material.dart';

import '../../../../../size_config.dart';
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
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(specialOffers.length, (index) {
                SpecialOfferModel specialOfferModel = specialOffers[index];
                return SpecialOfferCard(
                    category: specialOfferModel.category ?? '',
                    image: specialOfferModel.image!,
                    numOfBrands: specialOfferModel.numOfBrands!,
                    onPress: () {});
              }),
              // SpecialOfferCard(
              //   category: 'Smartphones',
              //   numOfBrands: 18,
              //   image: 'assets/images/Image Banner 2.png',
              //   onPress: () {},
              // ),
              // SpecialOfferCard(
              //   category: 'Fashions',
              //   numOfBrands: 24,
              //   image: 'assets/images/Image Banner 3.png',
              //   onPress: () {},
              // ),
              SizedBox(width: getProportionateScreenWidth(20))
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
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.onPress,
  });

  final String category, image;
  final int numOfBrands;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        text: '$category\n',
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
    );
  }
}
