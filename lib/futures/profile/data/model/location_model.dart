import 'package:auth_screen/futures/profile/domain/entity/location_entity.dart';

class LocationModel extends LocationEntity {
  LocationModel({required super.city, required super.country});

  LocationModel.fromJson(Map<String, dynamic> json)
      : super(city: json['city'], country: json['country']);
}
