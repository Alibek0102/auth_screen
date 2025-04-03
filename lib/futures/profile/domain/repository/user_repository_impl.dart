import 'package:auth_screen/futures/profile/data/model/user_model.dart';
import 'package:auth_screen/futures/profile/data/repository/user_repository.dart';
import 'package:auth_screen/futures/profile/domain/entity/user_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class UserRepositoryImpl implements UserRepository {
  final Dio _client;
  final String endpoint = 'https://randomuser.me/api';

  const UserRepositoryImpl({required Dio client}) : _client = client;

  @override
  Future<UserEntity> fetchUser() async {
    try {
      Response response = await _client.get(endpoint);
      return UserModel.fromJson((response.data['results'] as List<dynamic>)[0]);
    } catch (_) {
      throw ErrorDescription('Failed');
    }
  }
}
