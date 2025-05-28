import 'package:auth_screen/futures/splash_screen/domain/entities/token_entity.dart';
import 'package:auth_screen/futures/splash_screen/domain/repositories/token_repository.dart';

class SaveToken {
  final TokenRepository tokenRepository;

  const SaveToken({required this.tokenRepository});

  void perform({required TokenEntity tokenEntity}) {
    tokenRepository.saveToken(tokenEntity);
  }
}
