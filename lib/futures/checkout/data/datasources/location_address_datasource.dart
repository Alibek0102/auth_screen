import 'package:auth_screen/futures/checkout/data/models/location_address_model.dart';
import 'package:dio/dio.dart';

class LocationAddressDatasource {
  final Dio dioClient;

  const LocationAddressDatasource({required this.dioClient});

  Future<LocationAddressModel> getLocationAddress(
      {required double latitude, required double longitude}) async {
    Response response = await dioClient.get(
        'https://nominatim.openstreetmap.org/reverse?lat=37.33233141&lon=-122.0312186&format=json',
        options: Options(headers: {"User-Agent": "test"}));

    return LocationAddressModel.fromJson(response.data);
  }
}
