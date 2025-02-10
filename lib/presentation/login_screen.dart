import 'package:auth_screen/elements/auth_info_text.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/auth_page.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/elements/social_buttons.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthPage(
        headerTitle: "Sign in",
        hasBackButton: true, // активирует кнопку назад
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            children: [
              CustomTextfield(),
              SizedBox( height: 16),
              CustomButton(buttonText: 'Sign in'),
              SizedBox( height: 16),
              AuthInfoText(),
              SizedBox(height: 71),
              SocialButtons()
            ],
          ),
        )
      ),
    );
  }
}