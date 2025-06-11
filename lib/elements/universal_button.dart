import 'package:flutter/material.dart';

class UniversalButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;
  final bool disabled;

  const UniversalButton(
      {super.key, this.child, this.onTap, this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: disabled == false ? onTap : null,
        style: ButtonStyle(
            elevation: const WidgetStatePropertyAll(0),
            minimumSize:
                const WidgetStatePropertyAll(Size(double.infinity, 49)),
            backgroundColor: WidgetStatePropertyAll(
                Color.fromRGBO(142, 108, 239, disabled == false ? 1 : 0.5))),
        child: child);
  }
}
