import 'package:auth_screen/futures/favorite/domain/repository/favorite_products_repository.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';

class AddFavoriteProduct {
  final FavoriteProductsRepository favoriteProductsRepository;

  const AddFavoriteProduct({required this.favoriteProductsRepository});

  Future<void> perform({required ProductEntity favoriteProduct}) async {
    return favoriteProductsRepository.appendToFavorite(
        favoriteProduct: favoriteProduct);
  }
}
