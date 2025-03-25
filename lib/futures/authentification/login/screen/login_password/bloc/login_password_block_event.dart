part of 'login_password_block.dart';

abstract class LoginPasswordBlockEvent {}

class PasswordChangeEvent extends LoginPasswordBlockEvent {
  String password;

  PasswordChangeEvent({required this.password});
}

class ConfirmPasswordEvent extends LoginPasswordBlockEvent {
  String email;
  ConfirmPasswordEvent({required this.email});
}

class LoginEvent extends LoginPasswordBlockEvent {
   String email;
   LoginEvent({required this.email});
}
