import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/orders/presentation/blocs/orders_bloc/orders_cubit.dart';
import 'package:auth_screen/futures/orders/presentation/common/order_items_count_view.dart';
import 'package:auth_screen/futures/orders/presentation/common/order_status_item.dart';
import 'package:auth_screen/futures/orders/presentation/common/shipping_details_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OrderDetailsScreen extends StatelessWidget {
  final String orderNumber;
  final int index;

  const OrderDetailsScreen(
      {super.key, required this.orderNumber, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<OrdersCubit>()..getOrderByIndex(orderIndex: index),
      child: Scaffold(
          appBar: CustomAppBar(
            headerTitle: "Order $orderNumber",
            goBack: () {
              context.router.back();
            },
          ),
          body: BlocBuilder<OrdersCubit, OrdersState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadedSingleOrder: (order) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          const OrderStatusItem(
                            statusName: 'Delivered',
                            active: false,
                          ),
                          51.height,
                          const OrderStatusItem(
                            statusName: 'Shipped',
                            active: true,
                          ),
                          51.height,
                          const OrderStatusItem(
                            statusName: 'Order Confirmed ',
                            active: true,
                          ),
                          51.height,
                          const OrderStatusItem(
                            statusName: 'Order Placed',
                            active: true,
                          ),
                          40.height,
                          OrderItemsCountView(
                            count: order.products.length,
                          ),
                          40.height,
                          ShippingDetailsView(
                            shippingAddress: order.shippingAddress,
                          )
                        ],
                      ),
                    ),
                  );
                },
                error: () {
                  return const Center(
                    child: Text(
                      'Ошибка. Попробуйте позже!',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  );
                },
                loader: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          )),
    );
  }
}
