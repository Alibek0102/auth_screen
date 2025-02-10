import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;

  const CustomButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){}, 
      child: Text(
        '${buttonText}',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),
      ),
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(0),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 49)),
        backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(142, 108, 239, 1)) 
      ),
    );
  }
}