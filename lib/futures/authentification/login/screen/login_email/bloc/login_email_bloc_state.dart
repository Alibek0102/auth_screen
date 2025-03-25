part of 'login_email_bloc.dart';

abstract class LoginEmailBlocState {}

class LoginEmaiBlocInitialState extends LoginEmailBlocState {}

class EmailChangedState extends LoginEmailBlocState {
  String email;
  bool isInvalidEmail = false;

  EmailChangedState({required this.email, this.isInvalidEmail = false});

  EmailChangedState copyWith({String? email, bool? isInvalidEmail}) {
    return EmailChangedState(
      email: email ?? this.email,
      isInvalidEmail: isInvalidEmail ?? this.isInvalidEmail
    );
  }
} 

class ConfirmEmailState extends LoginEmailBlocState {
  String email;

  ConfirmEmailState({required this.email});
}

