import 'package:auth_screen/futures/home/data/model/product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class FavoriteProductsDatasource {
  List<ProductModel> getFavoriteProducts();
  Future<void> appendToFavoriteBox({required ProductModel favoriteProduct});
}

class FavoriteProductsDatasourceImpl implements FavoriteProductsDatasource {
  final Box<ProductModel> favoriteProductsBox;

  const FavoriteProductsDatasourceImpl({required this.favoriteProductsBox});

  @override
  List<ProductModel> getFavoriteProducts() {
    return favoriteProductsBox.values.toList();
  }

  @override
  Future<void> appendToFavoriteBox(
      {required ProductModel favoriteProduct}) async {
    await favoriteProductsBox.add(favoriteProduct);
  }
}
