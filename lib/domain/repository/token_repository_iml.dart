import 'package:auth_screen/data/models/token_model.dart';
import 'package:auth_screen/data/repositories/token_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenRepositoryIml implements TokenRepository {
  TokenModel? token;

  final Dio dioClient;

  TokenRepositoryIml({required this.dioClient});

  @override
  Future<void> loadToken() async {
    try {
      final pref = await SharedPreferences.getInstance();
      String? accessToken = await pref.getString('access_token');
      token = accessToken != null ? TokenModel(access_token: accessToken) : null;
    } catch (error) {
      throw ErrorDescription('Ошибка');
    }
  }

  @override
  Future<void> setToken({required TokenModel token}) async {
    final accessToken = token.access_token;
    token = TokenModel(access_token: accessToken);
    dioClient.options.headers['AutAuthorization'] = accessToken;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', accessToken);
  }

}