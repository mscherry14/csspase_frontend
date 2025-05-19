part of 'events_bloc.dart';

@freezed
abstract class EventsState with _$EventsState {
  const factory EventsState({
    required List<EventShortModel> events,
    EventModel? lastOpenedEvent,
  }) = EventsOkState;

  const factory EventsState.error({
    required List<EventShortModel> events,
    EventModel? lastOpenedEvent,
    required String errorMessage,
  }) = EventsErrorState;
}