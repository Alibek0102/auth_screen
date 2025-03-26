import 'package:auth_screen/core/constants/login_error_messages.dart';
import 'package:auth_screen/core/validators/login_validators.dart';
import 'package:auth_screen/data/models/token_model.dart';
import 'package:auth_screen/data/repositories/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_bloc_state.dart';
part 'login_bloc_event.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState>
    with LoginValidators {

  final LoginRepository loginRepo;

  LoginBloc({required this.loginRepo}) : super(LoginState()) {
    on<OnChangeEmailEvent>((event, emit) {
      final email = event.email;
      final initialState = (state as LoginState);
      emit(initialState.changeLoginData(email: email));
    });

    on<ConfirmEmailEvent>((_, emit) {
      final currentState = (state as LoginState);

      if(!isValidEmail(currentState.email ?? '')) {
        emit(currentState.copyWith(isInvalidEmail: true));
      } else {
        emit(currentState.copyWith(
          loginEvent: LoginScreen.onNavigate, 
          loginResponse: LoginResponse.proccess
        ));
      }
    });

    on<OnChangePassword>((event, emit) {
      final currentState = (state as LoginState);
      final password = event.password;
      emit(currentState.changeLoginData(password: password));
    });

    on<ConfirmPassword>((_, emit) {
      final currentState = (state as LoginState);

      if(!isValidPassword(currentState.password ?? '')) {
        emit(currentState.copyWith(isInvalidPassword: true));
      } else {
        add(LoginEvent());
      }
    });

    on<LoginEvent>((_, emit) async {
      final currentState = (state as LoginState);
      final String? email = currentState.email;
      final String? password = currentState.password;

      emit(currentState.copyWith(loginResponse: LoginResponse.loader));

      if(email == null || password == null) {
        emit(currentState.copyWith(loginResponse: LoginResponse.error));
        throw ErrorDescription(LoginErrorMessages.loginError);
      }

      try {
        TokenModel token = await loginRepo.login(email: email, password: password);
        print(token.access_token);
        await Future.delayed(const Duration(seconds: 2));
        emit(LoginSuccessState());
      } catch (_) {
        emit(currentState.copyWith(loginResponse: LoginResponse.error));
      }

    });
  }
}
