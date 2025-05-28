import 'package:auth_screen/futures/splash_screen/data/datasources/token_datasource.dart';
import 'package:auth_screen/futures/splash_screen/data/models/token_model.dart';
import 'package:auth_screen/futures/splash_screen/domain/entities/token_entity.dart';
import 'package:auth_screen/futures/splash_screen/domain/repositories/token_repository.dart';

class TokenRepositoryImpl extends TokenRepository {
  final TokenDatasource tokenDatasource;

  TokenRepositoryImpl({required this.tokenDatasource});

  @override
  Future<TokenEntity> getToken() async {
    return await tokenDatasource.getToken();
  }

  @override
  void saveToken(TokenEntity token) async {
    final tokenModel = TokenModel.fromEntity(token);
    tokenDatasource.saveToken(tokenModel);
  }
}
