import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/orders/presentation/common/order_items_count_view.dart';
import 'package:auth_screen/futures/orders/presentation/common/order_status_item.dart';
import 'package:auth_screen/futures/orders/presentation/common/shipping_details_view.dart';
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
                const OrderItemsCountView(),
                40.height,
                const ShippingDetailsView()
              ],
            ),
          ),
        ));
  }
}
