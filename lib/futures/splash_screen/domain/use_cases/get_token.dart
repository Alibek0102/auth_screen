import 'package:auth_screen/futures/splash_screen/domain/entities/token_entity.dart';
import 'package:auth_screen/futures/splash_screen/domain/repositories/token_repository.dart';

class GetToken {
  final TokenRepository tokenRepository;

  const GetToken({required this.tokenRepository});

  Future<TokenEntity> perform() {
    return tokenRepository.getToken();
  }
}
