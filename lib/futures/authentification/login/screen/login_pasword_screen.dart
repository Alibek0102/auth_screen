import 'package:auth_screen/core/app_colors.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/futures/authentification/common/auth_info_text.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auth_screen/futures/authentification/login/bloc/login_bloc.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

@RoutePage()
class LoginPaswordScreen extends StatelessWidget {
  final String email;

  const LoginPaswordScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginBlocState>(
        listener: (context, state) async {
          if(state is LoginState) {
            switch(state.loginResponse) {
              case LoginResponse.error:
                await Future.delayed(const Duration(seconds: 3));
                if(context.mounted) context.router.back();
                break;
              default:
                break;
            }
          } else if(state is LoginSuccessState) {
            if(context.mounted) context.router.replaceAll([TabNavigationRoute()]);
          }
        },
        bloc: loginBloc,
        builder: (context, state) {

          if(state is LoginState && state.loginResponse == LoginResponse.loader) {
            return Center(
              child: LoadingAnimationWidget.threeArchedCircle(
                color: AppColors.primary_violet,
                size: 70,
              ),
            );
          }

          return AuthPage(
            headerTitle: 'Sign in',
            hasBackButton: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  CustomTextfield(
                    isInvalidEmail: state is LoginState ? state.isInvalidPassword : false,
                    placeholder: 'Password',
                    onChanged: (value) {
                      loginBloc.add(OnChangePassword(password: value));
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                      buttonText: 'Sign in',
                      loginPress: () {
                        loginBloc.add(ConfirmPassword());
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
