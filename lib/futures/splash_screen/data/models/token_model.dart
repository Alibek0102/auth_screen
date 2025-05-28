import 'package:auth_screen/futures/splash_screen/domain/entities/token_entity.dart';

class TokenModel extends TokenEntity {
  TokenModel({required super.accessToken});

  factory TokenModel.fromEntity(TokenEntity tokenEntity) =>
      TokenModel(accessToken: tokenEntity.accessToken);
}
