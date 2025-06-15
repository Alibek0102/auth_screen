import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/authentification/common/auth_info_text.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegistrationScreen extends StatelessWidget {
  final firstNameFieldController = TextEditingController();
  final lastNameFieldController = TextEditingController();
  final emailAdressFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: AuthPage(
        hasBackButton: true,
        headerTitle: 'Create Account',
        child: Expanded(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextfield(
                    controller: firstNameFieldController,
                    isInvalidEmail: false,
                    placeholder: 'Firstname',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextfield(
                    controller: lastNameFieldController,
                    isInvalidEmail: false,
                    placeholder: 'Lastname',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextfield(
                    controller: emailAdressFieldController,
                    isInvalidEmail: false,
                    placeholder: 'Email Address',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextfield(
                    controller: passwordFieldController,
                    isInvalidEmail: false,
                    placeholder: 'Password',
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  CustomButton(buttonText: 'Continue', loginPress: () {}),
                  40.height,
                  AuthInfoText(
                    startText: 'ForgotPassword?',
                    tappableText: 'Reset',
                    onTap: () {
                      context.router.pushNamed('/forgot-password');
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
