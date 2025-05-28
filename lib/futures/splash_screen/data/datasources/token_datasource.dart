import 'package:auth_screen/core/constants/error_messages.dart';
import 'package:auth_screen/futures/splash_screen/data/models/token_model.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenDatasource {
  final SharedPreferences sharedPreferencesClient;
  final String accessTokenKey = 'access_token_test2';

  const TokenDatasource({required this.sharedPreferencesClient});

  Future<void> saveToken(TokenModel token) async {
    await sharedPreferencesClient.setString(accessTokenKey, token.accessToken);
  }

  Future<TokenModel> getToken() async {
    String? tokenFromStorage =
        sharedPreferencesClient.getString(accessTokenKey);
    if (tokenFromStorage != null) {
      return TokenModel(accessToken: tokenFromStorage);
    } else {
      throw ErrorDescription(ErrorMessages.tokenNotFound);
    }
  }
}
