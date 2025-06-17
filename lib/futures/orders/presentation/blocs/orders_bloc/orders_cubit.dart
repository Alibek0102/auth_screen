import 'dart:math';
import 'package:auth_screen/futures/cart/domain/entities/cart_product_entity.dart';
import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';
import 'package:auth_screen/futures/orders/domain/use_case/create_order_use_case.dart';
import 'package:auth_screen/futures/orders/domain/use_case/get_order_use_case.dart';
import 'package:auth_screen/futures/orders/domain/use_case/get_orders_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

/// Кубит для управления заказами в приложении.
///
/// Содержит бизнес-логику для создания заказов и получения списка всех заказов.
/// Использует [CreateOrderUseCase] и [GetOrdersUseCase] для выполнения операций.
class OrdersCubit extends Cubit<OrdersState> {
  /// Юзкейс для создания заказа.
  final CreateOrderUseCase createOrderUseCase;

  /// Юзкейс для получения списка заказов.
  final GetOrdersUseCase getOrdersUseCase;

  final GetOrderUseCase getOrderUseCase;

  /// Создаёт экземпляр [OrdersCubit] с указанными юзкейсами.
  ///
  /// [createOrderUseCase] — юзкейс для создания заказа.
  /// [getOrdersUseCase] — юзкейс для получения заказов.
  OrdersCubit(
      {required this.createOrderUseCase,
      required this.getOrdersUseCase,
      required this.getOrderUseCase})
      : super(const OrdersState.initial());

  /// Создаёт новый заказ.
  ///
  /// [shippingAddress] — адрес доставки.
  /// [cardNumber] — номер карты пользователя.
  /// [products] — список продуктов в заказе.
  ///
  /// Сначала эмитит состояние загрузки, затем имитирует задержку,
  /// создаёт объект [OrderEntity] и вызывает [createOrderUseCase],
  /// после чего эмитит состояние успеха.
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

  /// Загружает список всех заказов и эмитит состояние [OrdersState.loaded].
  void getOrders() {
    List<OrderEntity> orders = getOrdersUseCase.perform();
    emit(OrdersState.loaded(orders: orders));
  }

  void getOrderByIndex({required int orderIndex}) async {
    emit(const OrdersState.loader());
    await Future.delayed(const Duration(seconds: 2));
    try {
      final OrderEntity order = getOrderUseCase.perform(orderIndex: orderIndex);
      emit(OrdersState.loadedSingleOrder(order: order));
    } catch (error) {
      emit(const OrdersState.error());
    }
  }

  /// Генерирует случайный номер заказа в формате `#XXXXXX`.
  String generateOrderNumber() {
    final random = Random();
    final number = random.nextInt(900000) + 100000;
    return '#$number';
  }
}
