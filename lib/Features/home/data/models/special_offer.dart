import 'package:cloud_firestore/cloud_firestore.dart';

class SpecialOffer {
  final int? id;
  final String? category;
  final int? numOfBrands;
  final String? image;

  SpecialOffer({
    this.id,
    this.category,
    this.numOfBrands,
    this.image,
  });

  factory SpecialOffer.fromJson(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return SpecialOffer(
      id: data?['id'],
      category: data?['category'],
      numOfBrands: data?['num_of_brands'],
      image: data?['capital'],
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
