import 'package:auth_screen/futures/favorite/domain/repository/favorite_products_repository.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';

class GetFavoriteProducts {
  final FavoriteProductsRepository favoriteProductsRepository;

  const GetFavoriteProducts({required this.favoriteProductsRepository});

  List<ProductEntity> perform() {
    return favoriteProductsRepository.getFavoriteProducts();
  }
}
