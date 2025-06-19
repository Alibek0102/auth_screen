import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';

abstract class FavoriteProductsRepository {
  List<ProductEntity> getFavoriteProducts();
  Future<void> appendToFavorite({required ProductEntity favoriteProduct});
}
