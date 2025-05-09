import 'package:csspace_app/common/theme/domain/theme_mode_enum.dart';
import 'package:csspace_app/common/utils/simple_response.dart';


abstract interface class ThemeRepository {
  Future<SimpleResponse<CustomThemeMode>> setTheme(CustomThemeMode themeMode);

  Future<SimpleResponse<CustomThemeMode>> getTheme();
}
