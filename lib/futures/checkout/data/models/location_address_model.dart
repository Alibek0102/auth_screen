import 'package:auth_screen/futures/checkout/domain/entities/location_address_entity.dart';

class LocationAddressModel extends LocationAddressEntity {
  const LocationAddressModel(
      {required int placeId, required String displayName})
      : super(placeId: placeId, displayName: displayName);

  factory LocationAddressModel.fromJson(Map<String, dynamic> json) =>
      LocationAddressModel(
          placeId: json['place_id'], displayName: json['display_name']);

  factory LocationAddressModel.fromEntity(LocationAddressEntity entity) =>
      LocationAddressModel(
          placeId: entity.placeId, displayName: entity.displayName);
}
