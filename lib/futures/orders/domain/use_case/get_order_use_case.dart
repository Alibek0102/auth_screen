import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';
import 'package:auth_screen/futures/orders/domain/repository/order_repository.dart';

class GetOrderUseCase {
  final OrderRepository orderRepository;

  const GetOrderUseCase({required this.orderRepository});

  OrderEntity perform({required int orderIndex}) {
    return orderRepository.getOrder(orderIndex: orderIndex);
  }
}
