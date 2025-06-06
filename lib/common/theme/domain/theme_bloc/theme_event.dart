part of 'theme_bloc.dart';

@freezed
sealed class ThemeEvent with _$ThemeEvent {
  factory ThemeEvent.themeChanged(CustomThemeMode themeMode) = ThemeChanged;
  factory ThemeEvent.reload(SimpleResponse<CustomThemeMode> response) =
      ThemeReload;
  factory ThemeEvent.init() = ThemeInit;
}
