import 'package:auth_screen/elements/universal_button.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20, bottom: 34, left: 24, right: 24),
      child: UniversalButton(
        child: Row(
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
