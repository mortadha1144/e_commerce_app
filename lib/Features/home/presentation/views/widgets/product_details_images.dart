import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../size_config.dart';
import '../../../data/models/product_model.dart';

class ProductDetailsImages extends StatefulWidget {
  const ProductDetailsImages({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<ProductDetailsImages> createState() => _ProductDetailsImagesState();
}

class _ProductDetailsImagesState extends State<ProductDetailsImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    List<String> images = [widget.product.image!];
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.network(images[0]),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(images.length,
                (index) => buildSmallPreview(index: index, images: images))
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallPreview(
      {required int index, required List<String> images}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedImage == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.network(images[index]),
      ),
    );
  }
}
