import 'package:auth_screen/domain/entities/token_entity.dart';

class TokenModel extends TokenEntity {
  TokenModel({required super.access_token});
  TokenModel.toJson(Map<String, dynamic> json) : super(access_token: json['token']);

  Map<String, dynamic> fromJson() {
    return <String, dynamic> {
      'access_token': access_token
    };
  }
}