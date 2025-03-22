import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarTrailing extends StatelessWidget {
  const AppBarTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: IconButton(
        onPressed: (){}, 
        icon: const Icon(Icons.shop_rounded),
        style: IconButton.styleFrom(
          backgroundColor: AppColors.primary_violet
        ),
        color: Colors.white,
      ),
    );
  }
}