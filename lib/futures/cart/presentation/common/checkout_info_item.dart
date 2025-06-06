import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class CheckoutInfoItem extends StatelessWidget {
  final String itemKey;
  final double itemValue;
  bool isBoldValue = false;

  CheckoutInfoItem(
      {super.key,
      required this.itemKey,
      required this.itemValue,
      this.isBoldValue = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          itemKey,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: AppColors.textSilver),
        ),
        const Spacer(),
        Text("\$${itemValue}",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight:
                    isBoldValue == true ? FontWeight.bold : FontWeight.w500,
                color: Colors.black))
      ],
    );
  }
}
