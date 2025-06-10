import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  final String description;

  const ProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        description,
        style: TextStyle(fontSize: 12.0, color: AppColors.primarySilver),
      ),
    );
  }
}
