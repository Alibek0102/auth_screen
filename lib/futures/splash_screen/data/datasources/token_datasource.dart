import 'package:shared_preferences/shared_preferences.dart';

class TokenDatasource {
  final SharedPreferences sharedPreferencesClient;

  const TokenDatasource({required this.sharedPreferencesClient});
}
