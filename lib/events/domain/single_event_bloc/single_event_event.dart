part of 'single_event_bloc.dart';

@freezed
sealed class SingleEventEvent with _$SingleEventEvent {
  const factory SingleEventEvent.init({required String eventId}) = _InitSingleEventEvent;
  const factory SingleEventEvent.reload({String? eventId}) = _ReloadSingleEventEvent;
}
