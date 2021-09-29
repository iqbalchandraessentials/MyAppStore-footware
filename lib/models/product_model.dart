import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/models/gallery_model.dart';

class ProductModel {
  int? id;
  String? name;
  double? price;
  String? description;
  String? tags;
  CategoryModel? category;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<GallleryModel>? galleries;

  ProductModel(
      {
      this.id,
      this.price,
      this.description,
      this.tags,
      this.category,
      this.createdAt,
      this.updatedAt,
      this.galleries
      });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    // untuk merubah tipe data dari integer ke tipe string
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = CategoryModel.fromjson(json['category']);
    galleries = json['galleries']
        .map<GallleryModel>((gallery) => 
        // akan mereturn => data berbentuk list json 
        GallleryModel.fromjson(gallery))
        .toList();
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

// fungsi untuk json nya
  Map<String, dynamic> toJson() {
    return {
      'id' : id, 'name' : name,
      'price' : price,
      'description' : description,
      'tags' : tags,
      'category' : category?.tojson(),
      'galleries' : galleries?.map((gallery) => gallery.toJson()).toList(),
      'createdAt' : createdAt.toString(),
      'updatedAt' : updatedAt.toString()
    };
  }
}
