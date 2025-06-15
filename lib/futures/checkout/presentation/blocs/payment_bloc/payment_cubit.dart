import 'package:auth_screen/futures/checkout/presentation/blocs/payment_bloc/payment_card_exceptions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(const PaymentState.initial());

  void onConfirmPaymentCardNumber({required String cardNumber}) {
    if (cardNumber.length < 16) {
      emit(PaymentState.error(
          exception: InvalidCardNumberException(
              'Номер карты должен содержать 16 цифр')));
    } else if (!isNumericOnly(cardNumber)) {
      emit(PaymentState.error(
          exception: InvalidCardNumberException(
              'Номер карты должен содержать только цифры.')));
    } else {
      emit(PaymentState.selectedCard(
          cardNumber: cardNumber,
          maskedCardNumber: maskCardNumber(cardNumber)));
    }
  }

  String maskCardNumber(String cardNumber) {
    if (cardNumber.length < 4) return cardNumber;
    String last4 = cardNumber.substring(cardNumber.length - 4);
    return '**** $last4';
  }

  bool isNumericOnly(String input) {
    final regex = RegExp(r'^\d+$');
    return regex.hasMatch(input);
  }
}
