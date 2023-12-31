import 'package:e_commerce_app/Features/home/data/models/category_model.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categories});
  // final List<Map<String, dynamic>> categories = const [
  //   {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
  //   {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
  //   {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
  //   {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
  //   {"icon": "assets/icons/Discover.svg", "text": "More"},
  // ];

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              categories.length,
              (index) => CategoryCard(
                icon: categories[index].image ?? '',
                text: categories[index].name ?? '',
                onPress: () {},
              ),
            ),
          ],
        ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.onPress,
  });

  final String icon, text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.network(
                  icon,
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              text,
              textAlign: TextAlign.center,
              //style: TextStyle(fontSize: getProportionateScreenWidth(12)),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
