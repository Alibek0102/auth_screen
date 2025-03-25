import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/futures/authentification/common/auth_info_text.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auth_screen/futures/authentification/login/screen/login_password/bloc/login_password_block.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPaswordScreen extends StatelessWidget {
  const LoginPaswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final loginPasswordBloc = BlocProvider.of<LoginPasswordBlock>(context);

    return Scaffold(
      body: BlocConsumer<LoginPasswordBlock, LoginPasswordBlockState>(
        listener: (context, state) {
          if(state is LoggedInState){
            context.router.replaceNamed('/start');
          }
        },
        bloc: loginPasswordBloc,
        builder: (context, state) {
          return AuthPage(
            headerTitle: 'Sign in',
            hasBackButton: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  CustomTextfield(
                    isInvalidEmail: false,
                    placeholder: 'Password',
                    onChanged: (value) {
                      loginPasswordBloc.add(PasswordChangeEvent(password: value));
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                      buttonText: 'Sign in',
                      loginPress: () {
                        loginPasswordBloc.add(ConfirmPasswordEvent(email: email));
                      }),
                  const SizedBox(height: 16),
                  AuthInfoText(
                    goToRegistration: () {
                      context.router.pushNamed('/registration');
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
