import 'package:auth_screen/data/models/token_model.dart';

abstract class TokenRepository {
  Future<void> loadToken();
  Future<void> setToken({required TokenModel token});
}