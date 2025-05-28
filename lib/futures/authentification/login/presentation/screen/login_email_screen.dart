import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/authentification/common/auth_info_text.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auth_screen/futures/authentification/common/social_buttons.dart';
import 'package:auth_screen/futures/authentification/login/presentation/blocs/login_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginEmailScreen extends StatefulWidget {
  LoginEmailScreen({super.key});

  @override
  State<LoginEmailScreen> createState() => _LoginEmailScreenState();
}

class _LoginEmailScreenState extends State<LoginEmailScreen> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginCubit = getIt.get<LoginCubit>(param1: 'emailService');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<LoginCubit, LoginState>(
        bloc: loginCubit,
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              context.router.pushNamed('/login-password');
            },
          );
        },
        builder: (context, state) {
          return AuthPage(
              headerTitle: "Sign in",
              hasBackButton: false, // активирует кнопку назад
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextfield(
                      controller: emailController,
                      isInvalidEmail: state.maybeWhen(
                          error: () => true, orElse: () => false),
                      placeholder: 'Enter email',
                    ),
                    16.height,
                    CustomButton(
                      buttonText: 'Sign in',
                      loginPress: () {
                        loginCubit.onContinue(value: emailController.text);
                      },
                      loader: state.maybeMap(
                          loader: (value) => true, orElse: () => false),
                    ),
                    16.height,
                    AuthInfoText(
                      startText: 'Dont have an account?',
                      tappableText: 'Create one',
                      onTap: () {
                        context.router.pushNamed('/registration');
                      },
                    ),
                    71.height,
                    const SocialButtons()
                  ],
                ),
              ));
        },
      ),
    );
  }
}
