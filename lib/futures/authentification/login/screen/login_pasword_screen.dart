import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/futures/authentification/common/auth_info_text.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPaswordScreen extends StatelessWidget {
  const LoginPaswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthPage(
        headerTitle: 'Sign in',
        hasBackButton: true, 
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                CustomTextfield(
                  controller: TextEditingController(),
                  isInvalidEmail: false,
                  placeholder: 'Password',
                ),
                const SizedBox( height: 16),
                CustomButton(buttonText: 'Sign in', loginPress: (){context.router.replaceNamed('/start');}),
                const SizedBox( height: 16),
                AuthInfoText(
                  goToRegistration: () { context.router.pushNamed('/registration'); },
                ),
              ], 
            ),
          ), 
      ),
    );
  }
}