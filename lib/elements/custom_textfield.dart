import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final bool isInvalidEmail;
  final String? placeholder;
  final  Function(String) onChanged;

  const CustomTextfield({
    super.key, 
    required this.isInvalidEmail,
    required this.onChanged,
    this.placeholder
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
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