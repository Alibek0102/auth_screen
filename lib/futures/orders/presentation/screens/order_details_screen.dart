import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderDetailsScreen extends StatelessWidget {
  final String orderNumber;

  const OrderDetailsScreen({super.key, required this.orderNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(
        headerTitle: "Order",
      ),
    );
  }
}
