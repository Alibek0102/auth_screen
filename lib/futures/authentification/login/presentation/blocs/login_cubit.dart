import 'package:auth_screen/sevices/login_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginService loginService;

  LoginCubit({required this.loginService}) : super(const LoginState.initial());

  void onContinue({required String value}) async {
    emit(const LoginState.loader());

    await Future.delayed(const Duration(seconds: 3));

    if (!loginService.check(value)) {
      emit(const LoginState.error());
    } else {
      emit(const LoginState.success());
    }
  }
}
