import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AuthPage(
        hasBackButton: true,
        headerTitle: 'Forgot password',
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            children: [
              CustomTextfield(
                  controller: emailController,
                  placeholder: 'Enter Email address',
                  isInvalidEmail: false),
              24.height,
              CustomButton(buttonText: 'Continue', loginPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
