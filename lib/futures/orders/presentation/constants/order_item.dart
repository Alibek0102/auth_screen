import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/orders/domain/entities/order_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';

class OrderItem extends StatelessWidget {
  final OrderEntity order;

  const OrderItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final itemsCount =
        order.products.fold(0, (total, product) => product.count + total);

    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
      child: SizedBox(
          height: 72,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: AppColors.lightSilver,
                borderRadius: BorderRadius.circular(8.0)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/ReceiptTab.svg',
                    color: Colors.black,
                  ),
                  12.width,
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order  ${order.orderNumber}',
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '${itemsCount} items',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textSilver),
                        )
                      ],
                    ),
                  )),
                  SvgPicture.asset('assets/images/chevronright.svg')
                ],
              ),
            ),
          )),
    );
  }
}
