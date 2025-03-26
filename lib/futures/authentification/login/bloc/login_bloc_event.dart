part of 'login_bloc.dart';

class LoginBlocEvent {}

// first screen
class LoginEmailChangeEvent extends LoginBlocEvent {
  String email;

  LoginEmailChangeEvent({required this.email});
}

class ConfirmEmailEvent extends LoginBlocEvent {}

class LoginPasswordChangeEvent extends LoginBlocEvent {
  String password;
  String email;
  LoginPasswordChangeEvent({required this.password, required this.email});
}

class ConfirmPasswordEvent extends LoginBlocEvent {}

class LoginEvent extends LoginBlocEvent {}