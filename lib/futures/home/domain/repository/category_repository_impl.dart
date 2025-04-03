import 'package:auth_screen/futures/home/data/model/category_model.dart';
import 'package:auth_screen/futures/home/data/repository/category_repository.dart';
import 'package:auth_screen/futures/home/domain/entity/category_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final Dio _client;
  final String endpoint = 'https://fakestoreapi.in/api/products/category';

  CategoryRepositoryImpl({required Dio client}) : _client = client;

  @override
  Future<List<CategoryEntity>> fetchCategories() async {
    try {
      Response response = await _client.get(endpoint);
      List<dynamic> jsonList = response.data['categories'] as List<dynamic>;
      return jsonList
          .map((category) => CategoryModel.fromJson(name: category))
          .toList();
    } catch (_) {
      throw ErrorDescription('category failed');
    }
  }
}
