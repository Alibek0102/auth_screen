part of 'create_order_cubit.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial() = _CreateOrderInitialState;
  const factory CreateOrderState.loader() = _CreateOrderLoaderState;
  const factory CreateOrderState.success() = _CreateOrderSuccessState;
  const factory CreateOrderState.error() = _CreateOrderErrorState;
}
