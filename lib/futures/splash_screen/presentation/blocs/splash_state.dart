part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _SplashInitialState;
  const factory SplashState.authorized({required TokenEntity token}) =
      _SplashAuthorizedState;
  const factory SplashState.unauthorized() = _SplashUnauthorizedState;
}
