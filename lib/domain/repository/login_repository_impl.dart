import 'package:auth_screen/core/constants/login_error_messages.dart';
import 'package:auth_screen/data/models/token_model.dart';
import 'package:auth_screen/data/repositories/login_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginRepositoryImpl implements LoginRepository {

  final Dio dioClient;

  LoginRepositoryImpl({required this.dioClient});
  
  @override
  Future<TokenModel> login({required String email, required String password}) async {
    try {
      Response response = await dioClient.post('/auth/login', data: {'email': email, 'password': password});
      return TokenModel.toJson(response.data);
    } catch (error) {
      throw ErrorDescription(LoginErrorMessages.loginError);
    }
  }

}