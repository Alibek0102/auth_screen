part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitialState;
  const factory LoginState.error({required String message}) = _LoginErrorState;
  const factory LoginState.loader() = _LoginLoaderState;
  const factory LoginState.success() = _LoginSuccessState;
}
