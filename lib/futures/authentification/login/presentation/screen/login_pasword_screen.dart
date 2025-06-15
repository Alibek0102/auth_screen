import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/authentification/common/auth_info_text.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auth_screen/futures/authentification/login/presentation/blocs/login_cubit.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPaswordScreen extends StatefulWidget {
  const LoginPaswordScreen({super.key});

  @override
  State<LoginPaswordScreen> createState() => _LoginPaswordScreenState();
}

class _LoginPaswordScreenState extends State<LoginPaswordScreen> {
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginCubit = getIt.get<LoginCubit>(param1: 'passwordService');

    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        bloc: loginCubit,
        listener: (context, state) {
          state.whenOrNull(success: () {
            context.router.replaceAll(const [TabNavigationRoute()]);
          });
        },
        builder: (context, state) {
          return AuthPage(
            headerTitle: 'Sign in',
            hasBackButton: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextfield(
                    controller: passwordController,
                    isInvalidEmail: state.maybeWhen(
                        error: (_) => true, orElse: () => false),
                    placeholder: 'Password',
                    errorText: state.whenOrNull(
                      error: (message) => message,
                    ),
                  ),
                  16.height,
                  CustomButton(
                      loader: state.maybeWhen(
                          loader: () => true, orElse: () => false),
                      buttonText: 'Sign in',
                      loginPress: () {
                        loginCubit.onPasswordContinue(
                            password: passwordController.text);
                      }),
                  16.height,
                  AuthInfoText(
                    startText: 'Forgot Password?',
                    tappableText: 'Reset',
                    onTap: () {
                      context.router.pushNamed('/forgot-password');
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
