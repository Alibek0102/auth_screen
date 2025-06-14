import 'package:auth_screen/futures/checkout/domain/entities/location_address_entity.dart';
import 'package:auth_screen/futures/checkout/domain/repositories/location_address_repository.dart';

class GetAddressUsecases {
  final LocationAddressRepository locationAddressRepository;

  const GetAddressUsecases({required this.locationAddressRepository});

  Future<LocationAddressEntity> perform(
      {required double latitude, required double longitude}) {
    return locationAddressRepository.getLocation(
        latitude: latitude, longitude: longitude);
  }
}
