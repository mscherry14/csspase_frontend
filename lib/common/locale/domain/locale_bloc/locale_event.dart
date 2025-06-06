part of 'locale_bloc.dart';

@freezed
sealed class LocaleEvent with _$LocaleEvent {
  factory LocaleEvent.localeChanged(String languageCode) = LocaleChanged;
  factory LocaleEvent.reload(SimpleResponse<String> response) = LocaleReload;
  factory LocaleEvent.init() = LocaleInit;
}
