import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'common/app/widget/app.dart';
import "package:flutter_web_plugins/url_strategy.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(const App());
}