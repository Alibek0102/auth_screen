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

  LoginBloc({required this.loginRepo}) : super(LoginBlocInitialState()) {
    on<LoginEmailChangeEvent>((event, emit) {
      final email = event.email;
      emit(LoginEmailChangeState(email: email));
    });

    on<ConfirmEmailEvent>((event, emit) {
      final currentState = (state as LoginEmailChangeState);

      if(!isValidEmail(currentState.email)) {
        emit(currentState.copyWith(isInvalidEmail: true));
      } else {
        emit(ConfirmEmailState(email: currentState.email));
      }
    });

    on<LoginPasswordChangeEvent>((event, emit) {
      final password = event.password;
      final email = event.email;
      emit(LoginPasswordState(email: email, password: password));
    });

    on<ConfirmPasswordEvent>((event, emit) {
      final currentState = (state as LoginPasswordState);

      if(!isValidPassword(currentState.password ?? '')){
        emit(currentState.copyWith(invalidPassword: true));
      } else {
        add(LoginEvent());
      }
    });

    on<LoginEvent>((event, emit) async {
      final availableState = (state as LoginPasswordState);

      if(availableState.email == null || availableState.password == null) throw ErrorDescription('');

      try {
        TokenModel token = await loginRepo.login(
          email: availableState.email!, 
          password: availableState.password!
        );
        print(token.access_token);
      } catch(error) {
        if(error is String) {
          throw ErrorDescription(error);
        }
      }
    });
  }
}
