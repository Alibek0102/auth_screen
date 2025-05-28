import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());

  void onEmailContinue({required String email}) async {
    emit(const LoginState.loader());

    await Future.delayed(const Duration(seconds: 3));

    if (!_isValidEmail(email)) {
      emit(const LoginState.error());
    } else {
      emit(const LoginState.success());
    }
  }

  void onPasswordContinue({required String password}) async {
    emit(const LoginState.loader());

    await Future.delayed(const Duration(seconds: 3));

    if (!_isValidPasswordLength(password) ||
        !_containsPasswordLatinLetters(password) ||
        password.contains(' ')) {
      emit(const LoginState.error());
    } else {
      emit(const LoginState.success());
    }
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
