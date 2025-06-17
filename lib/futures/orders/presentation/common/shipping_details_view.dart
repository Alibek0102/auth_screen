import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/material.dart';

class ShippingDetailsView extends StatelessWidget {
  const ShippingDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Shipping details',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        16.height,
        SizedBox(
          height: 64,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: AppColors.lightSilver),
            child: Padding(
              padding: EdgeInsets.all(11),
              child: Text('2715 Ash Dr. San Jose, South Dakota 83475'),
            ),
          ),
        ),
      ],
    );
  }
}
