import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';
import 'package:auth_screen/futures/orders/domain/repository/order_repository.dart';

class CreateOrderUseCase {
  final OrderRepository orderRepository;

  const CreateOrderUseCase({required this.orderRepository});

  void perform({required OrderEntity order}) {
    return orderRepository.createOrder(order: order);
  }
}
