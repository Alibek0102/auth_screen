import 'package:auth_screen/elements/auth_page.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            children: [
              CustomTextfield(
                controller: firstNameFieldController, 
                isInvalidEmail: false,
                placeholder: 'Firstname',
              ),
              const SizedBox(height: 16,),
              CustomTextfield(
                controller: lastNameFieldController, 
                isInvalidEmail: false,
                placeholder: 'Lastname',
              ),
              const SizedBox(height: 16,),
              CustomTextfield(
                controller: emailAdressFieldController, 
                isInvalidEmail: false,
                placeholder: 'Email Address',
              ),
              const SizedBox(height: 16,),
              CustomTextfield(
                controller: passwordFieldController, 
                isInvalidEmail: false,
                placeholder: 'Password',
              ),
              SizedBox(height: screenHeight * 0.05,),
              CustomButton(
                buttonText: 'Continue', 
                loginPress: (){}
              )
            ],
          ),
        ), 
      ),
    );
  }
}