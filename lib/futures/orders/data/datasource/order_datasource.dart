import 'package:auth_screen/futures/orders/data/models/order_model.dart';
import 'package:hive/hive.dart';

abstract class OrderDatasource {
  void createOrder({required OrderModel order});
}

class OrderDatasourceImpl implements OrderDatasource {
  final Box<OrderModel> orderBox;

  const OrderDatasourceImpl({required this.orderBox});

  @override
  void createOrder({required OrderModel order}) {
    orderBox.add(order);
  }
}
