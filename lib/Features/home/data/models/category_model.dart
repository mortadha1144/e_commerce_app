import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  final int? id;
  final String? name;
  final String? image;

  CategoryModel({
    this.id,
    this.name,
    this.image,
  });

  factory CategoryModel.fromJson(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return CategoryModel(
      id: data?['id'],
      name: data?['name'],
      image: data?['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) "id": id,
      if (name != null) "name": name,
      if (image != null) "image": image,
    };
  }
}
