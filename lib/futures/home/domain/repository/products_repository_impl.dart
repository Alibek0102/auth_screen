import 'dart:convert';

import 'package:auth_screen/futures/home/data/model/product_model.dart';
import 'package:auth_screen/futures/home/data/repository/products_repository.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final Dio _client;
  final endpoint = 'https://fakestoreapi.in/api/products/category';

  ProductsRepositoryImpl({required Dio client}) : _client = client;

  @override
  Future<List<ProductEntity>> getProducts(
      {required String model, required int page}) async {
    try {
      Response response = await _client
          .get(endpoint, queryParameters: {'type': model, 'page': page});
      List<dynamic> jsonList = response.data['products'] as List<dynamic>;
      return jsonList.map((product) => ProductModel.fromJson(product)).toList();
    } catch (_) {
      throw ErrorDescription('products failed');
    }
  }
}
