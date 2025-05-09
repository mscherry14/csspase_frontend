import 'package:csspace_app/common/utils/simple_response.dart';

import '../domain/theme_mode_enum.dart';
import '../domain/theme_repository.dart';

class SimpleThemeRepositoryImpl implements ThemeRepository {
  @override
  Future<SimpleResponse<CustomThemeMode>> getTheme() async => SimpleOkResponse(payload: CustomThemeMode.dark);

  @override
  Future<SimpleResponse<CustomThemeMode>> setTheme(CustomThemeMode themeMode) async {
    return SimpleOkResponse(payload: CustomThemeMode.dark);
  }
}