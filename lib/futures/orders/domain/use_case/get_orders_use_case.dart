import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';
import 'package:auth_screen/futures/orders/domain/repository/order_repository.dart';

class GetOrdersUseCase {
  final OrderRepository orderRepository;

  const GetOrdersUseCase({required this.orderRepository});

  List<OrderEntity> perform() {
    return orderRepository.getOrders();
  }
}
