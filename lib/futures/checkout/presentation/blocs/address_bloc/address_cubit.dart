import 'dart:math';

import 'package:auth_screen/futures/checkout/domain/entities/location_address_entity.dart';
import 'package:auth_screen/futures/checkout/domain/usecases/get_address_usecases.dart';
import 'package:auth_screen/futures/checkout/presentation/blocs/address_bloc/address_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'address_state.dart';
part 'address_cubit.freezed.dart';

class AddressCubit extends Cubit<AddressState> {
  final Location locationClient;
  final GetAddressUsecases getAddressUsecases;

  AddressCubit({required this.locationClient, required this.getAddressUsecases})
      : super(const AddressState.notSelected());

  void onMyLocationPress() async {
    emit(const AddressState.loader());

    bool locationServiceEnabled = await locationClient.serviceEnabled();
    if (!locationServiceEnabled) {
      await locationClient.requestService();
      emit(const AddressState.notSelected());
    } else {
      final permissionStatus = await locationClient.hasPermission();

      switch (permissionStatus) {
        case PermissionStatus.granted:
          final locationData = await locationClient.getLocation();
          final latitude = locationData.latitude;
          final longitude = locationData.longitude;

          try {
            final address = await getAddressUsecases.perform(
                latitude: latitude!, longitude: longitude!);
            emit(AddressState.selectedAddress(address: address));
          } catch (error) {
            if (error is DioException) {
              emit(AddressState.error(exception: BadRequestException()));
            } else {
              emit(AddressState.error(
                  exception:
                      BadRequestException('Ошибка при получении адреса.')));
            }
          }
          break;
        case PermissionStatus.denied:
          await locationClient.requestPermission();
          emit(const AddressState.notSelected());
          break;
        default:
          emit(AddressState.error(exception: PermissionException()));
          emit(const AddressState.notSelected());
          break;
      }
    }
  }

  void onSetEnteredAddress({required String address}) async {
    emit(const AddressState.loader());
    await Future.delayed(const Duration(seconds: 2));
    emit(AddressState.selectedAddress(
        address: LocationAddressEntity(
            placeId: generateRandomID(), displayName: address)));
  }

  int generateRandomID() {
    final random = Random();
    return random.nextInt(1000000);
  }
}
