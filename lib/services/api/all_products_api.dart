import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nike_store/constants/api_url.dart';
import 'package:nike_store/services/models/all_products_model.dart';
import 'package:nike_store/services/models/categories_model.dart';

class ProductsApi {
  final baseUrl = ApiUrl().baseUrl;

  Future<Iterable<AllProductsModel>> allProductApi() async {
    try {
      final response = await http.get(
        Uri.parse('https://fakestoreapi.com/products'),
        headers: {'content-type': 'application/json'},
      );
      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        final res =
            data.map((product) => AllProductsModel.fromJson(product)).toList();
        print(res);
        return res;
      } else {
        debugPrint("error: ${response.body}");
        throw Exception('could not get data');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<AllProductsModel>> getAllProducts() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
      headers: {'content-type': 'application/json'},
    );

    List<AllProductsModel> products = [];

    if (response.statusCode == 200) {
      final Map<String, dynamic> body = jsonDecode(response.body);

      products.add(AllProductsModel.fromJson(body));
      return products;
    } else {
      return products;
    }
  }

  Future<AllProductsModel> getSingleProduct({required int id}) async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/$id'),
      headers: {'content-type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final json = AllProductsModel.fromJson(body);
      return json;
    } else {
      throw Exception('cant load product');
    }
  }

  Future<List<CategoriesModel>> getAllCategories() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/categories'),
      headers: {'content-type': 'application/json'},
    );

    final categories = <CategoriesModel>[];

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      for (var res in body) {
        categories.add(res);
      }

      return categories;
    } else {
      throw Exception('could not get categories');
    }
  }

  Future<List<CategoriesModel>> getProductByCategory(
      {required String categoryName}) async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/categories/$categoryName'),
      headers: {'content-type': 'application/json'},
    );

    final categoryProduct = <CategoriesModel>[];

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      for (var categoryProd in body) {
        categoryProduct.add(CategoriesModel.fromJson(categoryProd));
      }

      return categoryProduct;
    } else {
      throw Exception('Could not get category product');
    }
  }
}
