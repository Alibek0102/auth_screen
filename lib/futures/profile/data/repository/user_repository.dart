import 'package:auth_screen/futures/profile/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> fetchUser();
}
