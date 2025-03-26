part of 'login_bloc.dart';

class LoginBlocState {}
class LoginBlocInitialState extends LoginBlocState {}

// Email screen
class LoginEmailChangeState extends LoginBlocState {
  String email;
  bool isInvalidEmail = false;

  LoginEmailChangeState({required this.email, this.isInvalidEmail = false});

  LoginEmailChangeState copyWith({String? email, bool? isInvalidEmail}) {
    return LoginEmailChangeState(
      email: email ?? this.email,
      isInvalidEmail: isInvalidEmail ?? this.isInvalidEmail
    );
  }
}

class ConfirmEmailState extends LoginBlocState {
  String email;
  ConfirmEmailState({required this.email});
}

// password screen

class LoginPasswordState extends LoginBlocState {
  String? email;
  String? password;
  bool invalidPassword = false;

  LoginPasswordState({this.email, this.password, this.invalidPassword = false});

  LoginPasswordState copyWith({String? email, String? password, bool? invalidPassword}) {
    return LoginPasswordState(
      email: email ?? this.email,
      password: password ?? this.password,
      invalidPassword: invalidPassword ?? this.invalidPassword
    );
  }
}