import 'package:auth_screen/futures/splash_screen/domain/repositories/token_repository.dart';

class RemoveToken {
  final TokenRepository tokenRepository;
  const RemoveToken({required this.tokenRepository});

  Future<void> perform() async {
    await tokenRepository.removeToken();
  }
}
