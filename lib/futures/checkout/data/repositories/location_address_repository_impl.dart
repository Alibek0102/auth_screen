import 'package:auth_screen/futures/checkout/data/datasources/location_address_datasource.dart';
import 'package:auth_screen/futures/checkout/domain/entities/location_address_entity.dart';
import 'package:auth_screen/futures/checkout/domain/repositories/location_address_repository.dart';

class LocationAddressRepositoryImpl implements LocationAddressRepository {
  final LocationAddressDatasource locationAddressDatasource;

  const LocationAddressRepositoryImpl(
      {required this.locationAddressDatasource});

  @override
  Future<LocationAddressEntity> getLocation(
      {required double latitude, required double longitude}) async {
    return await locationAddressDatasource.getLocationAddress(
        latitude: latitude, longitude: longitude);
  }
}
