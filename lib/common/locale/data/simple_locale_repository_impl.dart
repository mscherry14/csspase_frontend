import 'package:csspace_app/common/utils/simple_response.dart';

import '../domain/locale_repository.dart';

class SimpleLocaleRepositoryImpl implements LocaleRepository {
  @override
  Future<SimpleResponse<String>> getLocale() async {
    return SimpleOkResponse(payload: 'ru');
  }

  @override
  Future<SimpleResponse<String>> setLocale(String languageCode) async {
    return SimpleOkResponse(payload: 'ru');
  }
}