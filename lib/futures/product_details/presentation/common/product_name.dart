import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:flutter/widgets.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mens Harrington Jacket',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          15.height,
          Text('\$148',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryViolet))
        ],
      ),
    );
  }
}
