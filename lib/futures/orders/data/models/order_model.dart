import 'package:auth_screen/futures/cart/data/models/cart_product_model.dart';
import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';
import 'package:hive/hive.dart';

part 'order_model.g.dart';

@HiveType(typeId: 3)
class OrderModel {
  @HiveField(0)
  final String shippingAddress;

  @HiveField(1)
  final String cardNumber;

  @HiveField(2)
  final List<CartProductModel> products;

  const OrderModel(
      {required this.cardNumber,
      required this.products,
      required this.shippingAddress});

  factory OrderModel.fromEntity(OrderEntity entity) => OrderModel(
      cardNumber: entity.cardNumber,
      products: entity.products
          .map((productEntity) => CartProductModel.fromEntity(productEntity))
          .toList(),
      shippingAddress: entity.shippingAddress);

  OrderEntity toEntity() {
    return OrderEntity(
      cardNumber: cardNumber,
      shippingAddress: shippingAddress,
      products:
          products.map((productModel) => productModel.toEntity()).toList(),
    );
  }
}
