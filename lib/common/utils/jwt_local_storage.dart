import 'dart:js_interop';

@JS('window.localStorage')
external Storage get localStorage;

@JS()
@staticInterop
class Storage {}

extension StorageExtension on Storage {
  @JS('getItem')
  external String? getItem(String key);

  @JS('setItem')
  external void setItem(String key, String value);

  @JS('removeItem')
  external void removeItem(String key);
}

class JWTLocalStorage {
  static void saveAccessToken(String token) {
    localStorage.setItem('access_token', token);
  }

  static void saveRefreshToken(String token) {
    localStorage.setItem('refresh_token', token);
  }

// Получить токен
  static String? getAccessToken() {
    return localStorage.getItem('access_token');
  }

  static String? getRefreshToken() {
    return localStorage.getItem('refresh_token');
  }

// Удалить токен
  static void clearTokens() {
    localStorage.removeItem('access_token');
    localStorage.removeItem('refresh_token');
  }
}