import 'package:auth_screen/elements/universal_button.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  final VoidCallback? onTap;
  final bool disabled;

  const AddToCartButton({super.key, this.onTap, this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 34, left: 24, right: 24),
      child: UniversalButton(
        onTap: onTap,
        disabled: disabled,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$148',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Add to Bag',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
