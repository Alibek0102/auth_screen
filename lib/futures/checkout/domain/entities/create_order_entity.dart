import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';

class CreateOrderEntity {
  final String shippingAddress;
  final String cardNumber;
  final List<CartProductEntity> products;

  const CreateOrderEntity(
      {required this.products,
      required this.cardNumber,
      required this.shippingAddress});
}
