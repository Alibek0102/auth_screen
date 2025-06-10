import 'package:auth_screen/futures/home/domain/entity/product_entity.dart';

class CartProductEntity {
  final int count;
  final String? size;
  final String? color;
  final ProductEntity product;

  const CartProductEntity(
      {required this.count, required this.product, this.color, this.size});

  CartProductEntity copyWith({int? count, ProductEntity? product}) {
    return CartProductEntity(
        count: count ?? this.count, product: product ?? this.product);
  }

  int get priceByCount => product.price * count;
}
