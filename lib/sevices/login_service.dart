abstract class LoginService {
  bool check(String value);
}

class EmailService extends LoginService {
  bool isValidEmail(String email) {
    final regex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    return regex.hasMatch(email);
  }

  @override
  bool check(String value) {
    if (!isValidEmail(value)) return false;
    return true;
  }
}

class PasswordService extends LoginService {
  @override
  bool check(String value) {
    return false;
  }
}
