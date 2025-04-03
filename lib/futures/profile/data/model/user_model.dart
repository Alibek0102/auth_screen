import 'package:auth_screen/futures/profile/data/model/location_model.dart';
import 'package:auth_screen/futures/profile/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.id,
      required super.name,
      required super.location,
      required super.phone,
      required super.pickture});

  UserModel.fromJson(Map<String, dynamic> json)
      : super(
            id: 1,
            name: json['email'],
            location: LocationModel.fromJson(json['location']),
            phone: json['phone'],
            pickture: json['picture']['medium']);
}
