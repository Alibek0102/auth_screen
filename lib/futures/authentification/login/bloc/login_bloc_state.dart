part of 'login_bloc.dart';

class LoginBlocState {}
class LoginBlocInitialState extends LoginBlocState {}

enum LoginScreen { onNavigate, resetNavigate }
enum LoginResponse { proccess, loader, error }

class LoginState extends LoginBlocState {
  String? email;
  String? password;
  bool isInvalidEmail = false;
  bool isInvalidPassword = false;

  LoginScreen loginEvent = LoginScreen.resetNavigate;
  LoginResponse loginResponse = LoginResponse.proccess;

  LoginState({
    this.email, 
    this.password, 
    this.isInvalidEmail = false, 
    this.isInvalidPassword = false,
    this.loginEvent = LoginScreen.resetNavigate,
    this.loginResponse = LoginResponse.proccess,
  });

  LoginState copyWith({
    String? email, 
    String? password, 
    bool? isInvalidEmail, 
    bool? isInvalidPassword,
    LoginScreen? loginEvent,
    LoginResponse? loginResponse
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      isInvalidEmail: isInvalidEmail ?? this.isInvalidEmail,
      isInvalidPassword: isInvalidPassword ?? this.isInvalidPassword,
      loginEvent: loginEvent ?? this.loginEvent,
      loginResponse: loginResponse ?? this.loginResponse
    );
  }

  LoginState changeLoginData({String? email, String? password}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      loginEvent: LoginScreen.resetNavigate,
      loginResponse: LoginResponse.proccess,
      isInvalidEmail: false,
      isInvalidPassword: false
    );
  }
}

class LoginSuccessState extends LoginBlocState {}