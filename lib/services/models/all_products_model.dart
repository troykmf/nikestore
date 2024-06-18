import 'package:nike_store/services/models/rating_model.dart';

class AllProductsModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  AllProductsModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory AllProductsModel.fromJson(Map<String, dynamic> json) {
    return AllProductsModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: json['rating']
          ? Rating.fromJson(
              json['rating'],
            )
          : null,
    );
  }

  // AllProducts.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   title = json['title'];
  //   price = json['price'];
  //   description = json['description'];
  //   category = json['category'];
  //   image = json['image'];
  //   rating =
  //       json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
  // }
}
