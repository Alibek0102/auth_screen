abstract class AddressException implements Exception {
  final String message;

  AddressException(this.message);
}

class PermissionException extends AddressException {
  PermissionException([super.message = 'Нет доступа к местоположению']);
}

class BadRequestException extends AddressException {
  BadRequestException([super.message = 'Ошибка: неверный запрос.']);
}
