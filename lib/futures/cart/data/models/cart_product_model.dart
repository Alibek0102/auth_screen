import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';
import 'package:auth_screen/futures/home/data/model/product_model.dart';
import 'package:hive/hive.dart';

part 'cart_product_model.g.dart';

@HiveType(typeId: 2)
class CartProductModel {
  @HiveField(0)
  final int count;

  @HiveField(1)
  final String? size;

  @HiveField(2)
  final String? color;

  @HiveField(3)
  final ProductModel product;

  CartProductModel(
      {required this.count, this.size, this.color, required this.product});

  factory CartProductModel.fromEntity(CartProductEntity entity) =>
      CartProductModel(
          count: entity.count,
          product: ProductModel.fromEntity(entity.product),
          size: entity.size,
          color: entity.color);

  CartProductEntity toEntity() {
    return CartProductEntity(
      count: count,
      size: size,
      color: color,
      product: product.toEntity(),
    );
  }
}
