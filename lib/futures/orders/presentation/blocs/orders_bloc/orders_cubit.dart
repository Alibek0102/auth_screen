import 'dart:math';
import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';
import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';
import 'package:auth_screen/futures/orders/domain/use_case/create_order_use_case.dart';
import 'package:auth_screen/futures/orders/domain/use_case/get_orders_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final CreateOrderUseCase createOrderUseCase;
  final GetOrdersUseCase getOrdersUseCase;

  OrdersCubit(
      {required this.createOrderUseCase, required this.getOrdersUseCase})
      : super(const OrdersState.initial());

  void createOrder(
      {required String shippingAddress,
      required String cardNumber,
      required List<CartProductEntity> products}) async {
    emit(const OrdersState.loader());
    await Future.delayed(const Duration(seconds: 2));
    final order = OrderEntity(
        orderNumber: generateOrderNumber(),
        products: products,
        cardNumber: cardNumber,
        shippingAddress: shippingAddress);
    createOrderUseCase.perform(order: order);
    emit(const OrdersState.success());
  }

  void getOrders() {
    List<OrderEntity> orders = getOrdersUseCase.perform();
    emit(OrdersState.loaded(orders: orders));
  }

  String generateOrderNumber() {
    final random = Random();
    final number = random.nextInt(900000) + 100000;
    return '#$number';
  }
}
