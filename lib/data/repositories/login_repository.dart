import 'package:auth_screen/data/models/token_model.dart';

abstract class LoginRepository {
  Future<TokenModel> login({ required String email, required String password});
}