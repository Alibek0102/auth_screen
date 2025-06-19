import 'package:auth_screen/futures/favorite/data/datasource/favorite_products_datasource.dart';
import 'package:auth_screen/futures/favorite/domain/repository/favorite_products_repository.dart';
import 'package:auth_screen/futures/home/data/model/product_model.dart';
import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';

class FavoriteProductsRepositoryImpl implements FavoriteProductsRepository {
  final FavoriteProductsDatasource favoriteProductsDatasource;

  const FavoriteProductsRepositoryImpl(
      {required this.favoriteProductsDatasource});

  @override
  List<ProductEntity> getFavoriteProducts() {
    return favoriteProductsDatasource
        .getFavoriteProducts()
        .map((product) => product.toEntity())
        .toList();
  }

  @override
  Future<void> appendToFavorite(
      {required ProductEntity favoriteProduct}) async {
    return favoriteProductsDatasource.appendToFavoriteBox(
        favoriteProduct: ProductModel.fromEntity(favoriteProduct));
  }
}
