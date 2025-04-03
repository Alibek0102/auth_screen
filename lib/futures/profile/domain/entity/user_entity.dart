import 'package:auth_screen/futures/profile/domain/entity/location_entity.dart';

class UserEntity {
  final int id;
  final String name;
  final LocationEntity location;
  final String phone;
  final String pickture;

  const UserEntity(
      {required this.id,
      required this.name,
      required this.location,
      required this.phone,
      required this.pickture});
}
