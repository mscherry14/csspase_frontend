import 'dart:js_interop';

/// Доступ к `window.Telegram.WebApp.initData`
@JS()
external TelegramWebApp get Telegram;

@JS()
@staticInterop
class TelegramWebApp {}

extension TelegramWebAppExtension on TelegramWebApp {
  @JS('WebApp')
  external WebApp get webApp;
}

@JS()
@staticInterop
class WebApp {}

extension WebAppExtension on WebApp {
  @JS('initData')
  external String get initData;
}

/// Получает `initData` из Telegram.WebApp.
String? getTelegramInitData() {
  try {
    return Telegram.webApp.initData;
  } catch (e) {
    // print('Telegram.WebApp не доступен: $e');
    return null;
  }
}