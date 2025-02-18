import 'package:auth_screen/elements/auth_info_text.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/auth_page.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/elements/social_buttons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {

  final controller = TextEditingController();
  bool isInvalidEmail = false;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if(!isInvalidEmail) return;
      isInvalidEmail = false;
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool _isValidEmail(String email) {
    final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegex.hasMatch(email);
  }

  void login() {
    if(controller.text.isEmpty) return;
    if(!_isValidEmail(controller.text)) {
      isInvalidEmail = true;
      setState(() {});
      return;
    } 

    isInvalidEmail = false;
    setState(() {});
    // continue
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthPage(
        headerTitle: "Sign in",
        hasBackButton: false, // активирует кнопку назад
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            children: [
              CustomTextfield(
                controller: controller,
                isInvalidEmail: isInvalidEmail,
                placeholder: 'Enter email',
              ),
              const SizedBox( height: 16),
              CustomButton(buttonText: 'Sign in', loginPress: login),
              const SizedBox( height: 16),
              AuthInfoText(
                goToRegistration: () { context.router.pushNamed('/registration'); },
              ),
              const SizedBox(height: 71),
              const SocialButtons()
            ], 
          ),
        )
      ),
    );
  }
}