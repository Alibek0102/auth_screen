import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/futures/authentification/common/auth_info_text.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auth_screen/futures/authentification/login/bloc/login_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPaswordScreen extends StatelessWidget {
  final String email;

  const LoginPaswordScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginBlocState>(
        listener: (context, state) {
          
        },
        bloc: loginBloc,
        builder: (context, state) {
          return AuthPage(
            headerTitle: 'Sign in',
            hasBackButton: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  CustomTextfield(
                    isInvalidEmail: state is LoginPasswordState ? state.invalidPassword : false,
                    placeholder: 'Password',
                    onChanged: (value) {
                      loginBloc.add(LoginPasswordChangeEvent(password: value, email: email));
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                      buttonText: 'Sign in',
                      loginPress: () {
                        loginBloc.add(ConfirmPasswordEvent());
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
