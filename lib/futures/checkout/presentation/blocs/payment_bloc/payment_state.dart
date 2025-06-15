part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _PaymentInitialState;
  const factory PaymentState.selectedCard(
      {required String cardNumber,
      required String maskedCardNumber}) = _PaymentSelectedCard;
  const factory PaymentState.error({required PaymentCardExceptions exception}) =
      _PaymentErrorState;
}
