part of 'orders_cubit.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _OrderInitialState;
  const factory OrdersState.loader() = _OrderLoaderState;
  const factory OrdersState.success() = _OrderSuccessState;
  const factory OrdersState.error() = _OrderErrorState;
  const factory OrdersState.loaded({required List<OrderEntity> orders}) =
      _OrdersLoadedState;
}
