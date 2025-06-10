import 'package:flutter/material.dart';

class UniversalButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;

  const UniversalButton({super.key, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: const ButtonStyle(
            elevation: WidgetStatePropertyAll(0),
            minimumSize: WidgetStatePropertyAll(Size(double.infinity, 49)),
            backgroundColor:
                WidgetStatePropertyAll(Color.fromRGBO(142, 108, 239, 1))),
        child: child);
  }
}
