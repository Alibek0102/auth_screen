import 'package:auth_screen/futures/favorite/domain/repository/favorite_products_repository.dart';

class DeleteFavoriteProduct {
  final FavoriteProductsRepository favoriteProductsRepository;

  const DeleteFavoriteProduct({required this.favoriteProductsRepository});

  Future<void> perform({required int productId}) {
    return favoriteProductsRepository.deleteFavoriteProductById(
        productId: productId);
  }
}
