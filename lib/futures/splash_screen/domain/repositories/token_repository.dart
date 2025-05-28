import 'package:auth_screen/futures/splash_screen/domain/entities/token_entity.dart';

abstract class TokenRepository {
  Future<TokenEntity> getToken();
  void saveToken(TokenEntity token);
}
