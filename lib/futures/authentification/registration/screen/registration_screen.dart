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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            children: [
              CustomTextfield(
                isInvalidEmail: false,
                placeholder: 'Firstname',
                onChanged: (value){},
              ),
              const SizedBox(height: 16,),
              CustomTextfield(
                isInvalidEmail: false,
                placeholder: 'Lastname',
                onChanged: (value){},
              ),
              const SizedBox(height: 16,),
              CustomTextfield(
                isInvalidEmail: false,
                placeholder: 'Email Address',
                onChanged: (value){},
              ),
              const SizedBox(height: 16,),
              CustomTextfield(
                isInvalidEmail: false,
                placeholder: 'Password',
                onChanged: (value){},
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