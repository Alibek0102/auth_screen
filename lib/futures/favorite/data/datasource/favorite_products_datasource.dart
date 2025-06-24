import 'package:auth_screen/futures/home/data/model/product_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class FavoriteProductsDatasource {
  List<ProductModel> getFavoriteProducts();
  Future<void> appendToFavoriteBox({required ProductModel favoriteProduct});
  Future<void> deleteById({required int productId});
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

  @override
  Future<void> deleteById({required int productId}) async {
    final keyToDelete = favoriteProductsBox.keys.firstWhere(
        (key) => favoriteProductsBox.get(key)?.id == productId,
        orElse: () => null);

    if (keyToDelete != null) {
      await favoriteProductsBox.delete(keyToDelete);
    } else {
      throw Exception('Не удалось удалить');
    }
  }
}
