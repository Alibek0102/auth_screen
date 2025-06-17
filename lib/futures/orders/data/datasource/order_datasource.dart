import 'package:auth_screen/futures/orders/data/models/order_model.dart';
import 'package:hive/hive.dart';

abstract class OrderDatasource {
  List<OrderModel> getOrders();
  OrderModel getOrder({required int orderIndex});
  void createOrder({required OrderModel order});
}

class OrderDatasourceImpl implements OrderDatasource {
  final Box<OrderModel> orderBox;

  const OrderDatasourceImpl({required this.orderBox});

  @override
  void createOrder({required OrderModel order}) {
    orderBox.add(order);
  }

  @override
  List<OrderModel> getOrders() {
    return orderBox.values.toList();
  }

  @override
  OrderModel getOrder({required int orderIndex}) {
    final OrderModel? order = orderBox.getAt(orderIndex);
    if (order != null) {
      return order;
    } else {
      throw Exception('Заказ с указанным индексом не найден');
    }
  }
}
