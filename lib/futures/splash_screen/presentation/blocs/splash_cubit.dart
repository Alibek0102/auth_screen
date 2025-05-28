import 'package:auth_screen/futures/splash_screen/domain/entities/token_entity.dart';
import 'package:auth_screen/futures/splash_screen/domain/use_cases/get_token.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final GetToken getToken;

  SplashCubit({required this.getToken}) : super(const SplashState.initial());

  void authCheck() async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      final TokenEntity token = await getToken.perform();
      emit(SplashState.authorized(token: token));
    } catch (error) {
      emit(const SplashState.unauthorized());
    }
  }
}
