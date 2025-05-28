import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryAppBarButton extends StatelessWidget {
  const CategoryAppBarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.lightSilver,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12)),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Man',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
