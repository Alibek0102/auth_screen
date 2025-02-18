import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool isInvalidEmail;
  final String? placeholder;

  const CustomTextfield({
    super.key, 
    required this.controller, 
    required this.isInvalidEmail,
    this.placeholder
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: placeholder ?? '',
        filled: true,
        isCollapsed: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 17, horizontal: 12),
        fillColor: Colors.grey[100],
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide.none,
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1
          )
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1
          )
        ),
        errorText: isInvalidEmail ? 'Неправильный email' : null
      ),
    );
  }
}