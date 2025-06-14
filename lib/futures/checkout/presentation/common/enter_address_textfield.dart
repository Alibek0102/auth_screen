import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class EnterAddressTextField extends StatelessWidget {
  final TextEditingController addressController;

  const EnterAddressTextField({super.key, required this.addressController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: addressController,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: AppColors.lightSilver2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: AppColors.lightSilver2)),
          hintText: 'Адрес доставки',
          hintStyle: TextStyle(color: AppColors.textSilver)),
    );
  }
}
