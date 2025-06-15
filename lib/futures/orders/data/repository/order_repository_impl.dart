import 'package:auth_screen/futures/orders/data/datasource/order_datasource.dart';
import 'package:auth_screen/futures/orders/data/models/order_model.dart';
import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';
import 'package:auth_screen/futures/orders/domain/repository/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderDatasource orderDatasource;

  OrderRepositoryImpl({required this.orderDatasource});

  @override
  void createOrder({required OrderEntity order}) {
    orderDatasource.createOrder(order: OrderModel.fromEntity(order));
  }
}
