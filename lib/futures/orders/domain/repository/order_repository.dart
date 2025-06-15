import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';

abstract class OrderRepository {
  void createOrder({required OrderEntity order});
}
