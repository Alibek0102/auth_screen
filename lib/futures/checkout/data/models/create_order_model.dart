import 'package:auth_screen/futures/cart/data/models/cart_product_model.dart';
import 'package:auth_screen/futures/checkout/domain/entities/create_order_entity.dart';
import 'package:hive/hive.dart';

part 'create_order_model.g.dart';

@HiveType(typeId: 3)
class CreateOrderModel {
  @HiveField(0)
  final String shippingAddress;

  @HiveField(1)
  final String cardNumber;

  @HiveField(2)
  final List<CartProductModel> products;

  const CreateOrderModel(
      {required this.cardNumber,
      required this.products,
      required this.shippingAddress});

  factory CreateOrderModel.fromEntity(
          CreateOrderEntity entity) =>
      CreateOrderModel(
          cardNumber: entity.cardNumber,
          products: entity.products
              .map(
                  (productEntity) => CartProductModel.fromEntity(productEntity))
              .toList(),
          shippingAddress: entity.shippingAddress);
}
