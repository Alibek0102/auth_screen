import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_app_bar.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/orders/presentation/blocs/orders_bloc/orders_cubit.dart';
import 'package:auth_screen/futures/orders/presentation/common/orders_filter_list.dart';
import 'package:auth_screen/futures/orders/presentation/constants/order_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<OrdersCubit>()..getOrders(),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const CustomAppBar(
              headerTitle: 'Orders',
            ),
            body: Column(
              children: [
                const OrdersFilterList(),
                24.height,
                Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return const OrderItem();
                        }))
              ],
            ),
          );
        },
      ),
    );
  }
}
