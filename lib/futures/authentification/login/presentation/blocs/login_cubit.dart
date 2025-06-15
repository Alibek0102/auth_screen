import 'package:auth_screen/futures/splash_screen/domain/entities/token_entity.dart';
import 'package:auth_screen/futures/splash_screen/domain/use_cases/save_token.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SaveToken saveToken;

  LoginCubit({required this.saveToken}) : super(const LoginState.initial());

  void onEmailContinue({required String email}) async {
    emit(const LoginState.loader());

    await Future.delayed(const Duration(seconds: 3));

    if (!_isValidEmail(email)) {
      emit(const LoginState.error(
          message: 'Некорректный формат электронной почты'));
    } else {
      emit(const LoginState.success());
    }
  }

  void onPasswordContinue({required String password}) async {
    emit(const LoginState.loader());

    await Future.delayed(const Duration(seconds: 3));

    if (!_isValidPasswordLength(password) || password.contains(' ')) {
      emit(const LoginState.error(
          message: 'Пароль должен содержать не менее 8 символов'));
    } else if (!_containsPasswordLatinLetters(password)) {
      emit(const LoginState.error(
          message: 'Пароль должен содержать только латинские буквы'));
    } else {
      final generatedToken = generateToken();
      final tokenEntity = TokenEntity(accessToken: generatedToken);
      saveToken.perform(tokenEntity: tokenEntity);
      emit(const LoginState.success());
    }
  }

  String generateToken() {
    return const Uuid().v4();
  }

  bool _isValidEmail(String email) {
    final regex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    return regex.hasMatch(email);
  }

  bool _isValidPasswordLength(String password) {
    return password.length >= 8;
  }

  bool _containsPasswordLatinLetters(String password) {
    final regex = RegExp(r'[a-zA-Z]');
    return regex.hasMatch(password);
  }
}
