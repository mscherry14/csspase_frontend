part of 'theme_bloc.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    required CustomThemeMode themeMode,
  }) = _ThemeState;

  const factory ThemeState.error({
    required CustomThemeMode themeMode,
    required String errorMessage,
  }) = _ThemeErrorState;
}
