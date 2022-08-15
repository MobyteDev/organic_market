import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectableModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@LazySingleton()
class SharedPref {
  final String _token = 'token';
  SharedPreferences _pref;

  SharedPref(this._pref);

  Future<String> getToken() async {
    return _pref.getString(_token) ?? '';
  }

  Future<void> setToken(String token) async {
    await _pref.setString(_token, token);
  }
}
