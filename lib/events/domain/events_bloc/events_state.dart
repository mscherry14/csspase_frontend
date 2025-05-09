part of 'events_bloc.dart';

@freezed
abstract class EventsState with _$EventsState {
  const factory EventsState({
    required List<EventModel> events,
  }) = EventsOkState;

  const factory EventsState.error({
    required List<EventModel> events,
    required String errorMessage,
  }) = EventsErrorState;
}