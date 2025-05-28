import 'package:auth_screen/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  bool loader = false;
  void Function() loginPress;

  CustomButton(
      {super.key,
      required this.buttonText,
      required this.loginPress,
      this.loader = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !loader ? loginPress : null,
      style: const ButtonStyle(
          elevation: WidgetStatePropertyAll(0),
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 49)),
          backgroundColor:
              WidgetStatePropertyAll(Color.fromRGBO(142, 108, 239, 1))),
      child: !loader
          ? Text(
              buttonText,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          : const Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
