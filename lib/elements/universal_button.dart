import 'package:flutter/material.dart';

class UniversalButton extends StatelessWidget {
  final Widget? child;

  const UniversalButton({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            elevation: WidgetStatePropertyAll(0),
            minimumSize: WidgetStatePropertyAll(Size(double.infinity, 49)),
            backgroundColor:
                WidgetStatePropertyAll(Color.fromRGBO(142, 108, 239, 1))),
        child: child);
  }
}
