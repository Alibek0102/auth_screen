abstract class PaymentCardExceptions implements Exception {
  final String message;

  PaymentCardExceptions(this.message);
}

class InvalidCardNumberException extends PaymentCardExceptions {
  InvalidCardNumberException([super.message = 'Неправильный номер карты']);
}
