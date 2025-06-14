import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';

class OrderEntity {
  final String orderNumber;
  final String shippingAddress;
  final String cardNumber;
  final List<CartProductEntity> products;

  const OrderEntity(
      {required this.orderNumber,
      required this.products,
      required this.cardNumber,
      required this.shippingAddress});
}
