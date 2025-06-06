import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/cart/presentation/common/checkout_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckoutInfo extends StatelessWidget {
  final double subtotalValue;
  final double shippingCostValue;
  final double taxValue;
  final double totalPrice;

  const CheckoutInfo(
      {super.key,
      required this.subtotalValue,
      required this.shippingCostValue,
      this.taxValue = 0.0,
      required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckoutInfoItem(
            itemKey: 'Subtotal',
            itemValue: subtotalValue,
          ),
          8.height,
          CheckoutInfoItem(
            itemKey: 'Shipping Cost',
            itemValue: shippingCostValue,
          ),
          8.height,
          CheckoutInfoItem(
            itemKey: 'Tax',
            itemValue: 0.00,
          ),
          8.height,
          CheckoutInfoItem(
            itemKey: 'Total',
            itemValue: subtotalValue + shippingCostValue,
            isBoldValue: true,
          )
        ],
      ),
    );
  }
}
