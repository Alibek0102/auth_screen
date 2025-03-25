part of 'login_email_bloc.dart';

abstract class LoginEmailBlocEvent {}

class EmailChangeEvent extends LoginEmailBlocEvent {
  String email;

  EmailChangeEvent({required this.email});
}

class ConfirmEmailEvent extends LoginEmailBlocEvent {}