import 'package:csspace_app/common/utils/simple_response.dart';

abstract interface class LocaleRepository {
  Future<SimpleResponse<String>> setLocale(String languageCode);
  Future<SimpleResponse<String>> getLocale();
}
