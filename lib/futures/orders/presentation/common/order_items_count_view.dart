import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderItemsCountView extends StatelessWidget {
  const OrderItemsCountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Order Items',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        16.height,
        SizedBox(
          height: 72.0,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: AppColors.lightSilver,
                borderRadius: BorderRadius.circular(8.0)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/ReceiptTab.svg'),
                  12.width,
                  Text(
                    '4 items',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryViolet),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
