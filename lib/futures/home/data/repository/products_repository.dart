import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';

abstract class ProductsRepository {
  Future<List<ProductEntity>> getProducts(
      {required String model, required int page});
}
