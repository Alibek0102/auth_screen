import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/orders/presentation/common/order_status_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderDetailsScreen extends StatelessWidget {
  final String orderNumber;

  const OrderDetailsScreen({super.key, required this.orderNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          headerTitle: "Order $orderNumber",
          goBack: () {
            context.router.back();
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const OrderStatusItem(
                  statusName: 'Delivered',
                ),
                51.height,
                const OrderStatusItem(
                  statusName: 'Shipped',
                ),
                51.height,
                const OrderStatusItem(
                  statusName: 'Order Confirmed ',
                ),
                51.height,
                const OrderStatusItem(
                  statusName: 'Order Placed',
                )
              ],
            ),
          ),
        ));
  }
}
