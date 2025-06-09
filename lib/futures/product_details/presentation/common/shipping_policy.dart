import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class ShippingPolicy extends StatelessWidget {
  const ShippingPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Shipping & Returns',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text('Free standard shipping and free 60-day returns',
              style: TextStyle(fontSize: 12.0, color: AppColors.primarySilver))
        ],
      ),
    );
  }
}
