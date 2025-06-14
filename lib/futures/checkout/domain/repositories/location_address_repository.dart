import 'package:auth_screen/futures/checkout/domain/entities/location_address_entity.dart';

abstract class LocationAddressRepository {
  Future<LocationAddressEntity> getLocation(
      {required double latitude, required double longitude});
}
