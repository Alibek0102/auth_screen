import 'package:flutter/material.dart';

class AuthInfoText extends StatelessWidget {

  final Function()? goToRegistration;

  const AuthInfoText({
    super.key,
    this.goToRegistration
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Dont have an Account? ',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        TextButton(
          onPressed: goToRegistration, 
          child: const Text(
            "Create One",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold
            ),
          ),
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
            minimumSize: WidgetStatePropertyAll(Size.zero)
          )
        )
      ],
    );
  }
}