import 'package:cloud_firestore/cloud_firestore.dart';

class SpecialOfferModel {
  final int? id;
  final String? category;
  final int? numOfBrands;
  final String? image;

  SpecialOfferModel({
    this.id,
    this.category,
    this.numOfBrands,
    this.image,
  });

  factory SpecialOfferModel.fromJson(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return SpecialOfferModel(
      id: data?['id'],
      category: data?['category'],
      numOfBrands: data?['num_of_brands'],
      image: data?['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) "id": id,
      if (category != null) "category": category,
      if (numOfBrands != null) "num_of_brands": numOfBrands,
      if (image != null) "image": image,
    };
  }
}
