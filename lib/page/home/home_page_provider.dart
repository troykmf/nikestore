import 'package:flutter/material.dart';
import 'package:nike_store/services/api/all_products_api.dart';
import 'package:nike_store/services/models/all_products_model.dart';

class HomePageProvider extends ChangeNotifier {
  bool isLoading = false;
  Iterable<AllProductsModel> products = [];

  Future<void> getProducts() async {
    isLoading = true;
    notifyListeners();

    products = await ProductsApi().allProductApi();
    isLoading = false;
    notifyListeners();
  }
}
