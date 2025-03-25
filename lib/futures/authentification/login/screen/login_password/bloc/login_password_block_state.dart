part of 'login_password_block.dart';

abstract class LoginPasswordBlockState {}

class LoginPasswordBlockInitialState extends LoginPasswordBlockState {}

class PasswordChangedState extends LoginPasswordBlockState {
  String password;
  bool isInvalidPassword = false;

  PasswordChangedState({required this.password, this.isInvalidPassword = false});

  PasswordChangedState copyWith({String? password, bool? isInvalidPassword}) {
    return PasswordChangedState(
      password: password ?? this.password,
      isInvalidPassword: isInvalidPassword ?? this.isInvalidPassword
    );
  }
}

class LoggedInState extends LoginPasswordBlockState {}