import 'package:auth_screen/core/di/service_locator.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/extensions/sized_box_by_int.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auth_screen/futures/authentification/login/presentation/blocs/login_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPaswordScreen extends StatelessWidget {
  const LoginPaswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = getIt.get<LoginCubit>(param1: 'passwordService');

    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        bloc: loginCubit,
        listener: (context, state) {},
        builder: (context, state) {
          return AuthPage(
            headerTitle: 'Sign in',
            hasBackButton: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  CustomTextfield(
                    controller: TextEditingController(),
                    isInvalidEmail: false,
                    placeholder: 'Password',
                  ),
                  16.height,
                  CustomButton(
                      buttonText: 'Sign in',
                      loginPress: () {
                        context.router.replaceNamed('/start');
                      }),
                  16.height,
                  // AuthInfoText(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
