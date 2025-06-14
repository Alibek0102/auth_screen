part of 'address_cubit.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.notSelected() = _AddressNotSelectedState;
  const factory AddressState.selectedAddress(
      {required LocationAddressEntity address}) = _AddressSelectedState;
  const factory AddressState.error({required AddressException exception}) =
      _AddressErrorState;
  const factory AddressState.loader() = _AddressLoaderState;
}
