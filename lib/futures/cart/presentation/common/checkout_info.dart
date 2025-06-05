import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/presentation/common/checkout_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckoutInfo extends StatelessWidget {
  const CheckoutInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckoutInfoItem(
            itemKey: 'Subtotal',
            itemValue: 200,
          ),
          8.height,
          CheckoutInfoItem(
            itemKey: 'Shipping Cost',
            itemValue: 8.00,
          ),
          8.height,
          CheckoutInfoItem(
            itemKey: 'Tax',
            itemValue: 0.00,
          ),
          8.height,
          CheckoutInfoItem(
            itemKey: 'Total',
            itemValue: 208,
            isBoldValue: true,
          )
        ],
      ),
    );
  }
}
