import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class CheckoutTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String? placeholder;
  final TextInputType? keyboardType;
  final int? maxLength;
  final String? errorMessage;

  const CheckoutTextfield(
      {super.key,
      required this.controller,
      this.placeholder,
      this.keyboardType,
      this.maxLength,
      this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          errorText: errorMessage,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.red)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.red)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: AppColors.lightSilver2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: AppColors.lightSilver2)),
          hintText: placeholder,
          hintStyle: TextStyle(color: AppColors.textSilver)),
    );
  }
}
