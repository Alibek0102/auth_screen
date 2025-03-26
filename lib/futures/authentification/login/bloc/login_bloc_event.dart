part of 'login_bloc.dart';

class LoginBlocEvent {}

class OnChangeEmailEvent extends LoginBlocEvent {
  String email;
  OnChangeEmailEvent({required this.email});
}

class ConfirmEmailEvent extends LoginBlocEvent {}

class OnChangePassword extends LoginBlocEvent {
  String password;

  OnChangePassword({required this.password});
}

class ConfirmPassword extends LoginBlocEvent {}

class LoginEvent extends LoginBlocEvent {}