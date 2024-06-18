class CategoriesModel {
  final String electronics;
  final String jeweries;
  final String menClothing;
  final String womenClothing;

  const CategoriesModel({
    required this.electronics,
    required this.jeweries,
    required this.menClothing,
    required this.womenClothing,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      electronics: json['electronics'],
      jeweries: json['jeweries'],
      menClothing: json["men's clothing"],
      womenClothing: json["women's clothing"],
    );
  }
}
