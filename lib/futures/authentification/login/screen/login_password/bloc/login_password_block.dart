import 'package:auth_screen/core/validators/login_validators.dart';
import 'package:auth_screen/data/models/token_model.dart';
import 'package:auth_screen/data/repositories/login_repository.dart';
import 'package:auth_screen/data/repositories/token_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_password_block_event.dart';
part 'login_password_block_state.dart';

class LoginPasswordBlock extends Bloc<LoginPasswordBlockEvent, LoginPasswordBlockState> with LoginValidators {
  final LoginRepository loginRepository;
  final TokenRepository tokenRepository;

  LoginPasswordBlock({
    required this.loginRepository,
    required this.tokenRepository
  }) : super(LoginPasswordBlockInitialState()) {
    on<PasswordChangeEvent>((event, emit) {
      final password = event.password;
      emit(PasswordChangedState(password: password));
    });

    on<ConfirmPasswordEvent>((event, emit) {
      final email = event.email;
      final currentState = (state as PasswordChangedState);

      if(!isValidPassword(currentState.password)){
        emit(currentState.copyWith(isInvalidPassword: true));
      } else {
        add(LoginEvent(email: email));
      }
    });

    on<LoginEvent>((event,emit) async {
      final email = event.email;
      final currentState = (state as PasswordChangedState);

      try {
        TokenModel token = await loginRepository.login(email: email, password: currentState.password);
        await tokenRepository.setToken(token: token);
        emit(LoggedInState());
      } catch (error){
        throw ErrorDescription('');
      }
    });
  }
}