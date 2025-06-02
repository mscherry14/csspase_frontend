part of 'events_bloc.dart';

@freezed
abstract class EventsState with _$EventsState {
  const factory EventsState({
    required List<EventShortModel> events,
  }) = EventsOkState;

  const factory EventsState.loading({
    required List<EventShortModel> events,
  }) = EventsLoadingState;

  const factory EventsState.error({
    required List<EventShortModel> events,
    required String errorMessage,
  }) = EventsErrorState;
}