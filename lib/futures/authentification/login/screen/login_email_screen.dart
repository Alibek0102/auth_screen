import 'package:auth_screen/futures/authentification/common/auth_info_text.dart';
import 'package:auth_screen/elements/custom_button.dart';
import 'package:auth_screen/elements/custom_textfield.dart';
import 'package:auth_screen/futures/authentification/common/auth_page.dart';
import 'package:auth_screen/futures/authentification/common/social_buttons.dart';
import 'package:auth_screen/futures/authentification/login/bloc/login_bloc.dart';
import 'package:auth_screen/routes/app_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginEmailScreen extends StatelessWidget {
  const LoginEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBlock = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginBlocState>(
        listener: (context, state) {
          if(
            state is LoginState 
            && state.loginEvent == LoginScreen.onNavigate 
            && state.email != null
          ) {
            final email = state.email!;
            context.router.push(LoginPaswordRoute(email: email));
          }
        },
        bloc: loginBlock,
        builder: (context, state) {
          return AuthPage(
              headerTitle: "Sign in",
              hasBackButton: false, // активирует кнопку назад
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  children: [
                    CustomTextfield(
                      isInvalidEmail: state is LoginState ? state.isInvalidEmail : false,
                      placeholder: 'Enter email',
                      onChanged: (value) {
                        loginBlock.add(OnChangeEmailEvent(email: value));
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomButton(buttonText: 'Sign in', loginPress: () {
                      loginBlock.add(ConfirmEmailEvent());
                    }),
                    const SizedBox(height: 16),
                    AuthInfoText(
                      goToRegistration: () {
                        context.router.pushNamed('/registration');
                      },
                    ),
                    const SizedBox(height: 71),
                    const SocialButtons()
                  ],
                ),
              ));
        },
      ),
    );
  }
}
