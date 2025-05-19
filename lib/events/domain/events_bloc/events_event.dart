part of 'events_bloc.dart';

@freezed
sealed class EventsEvent with _$EventsEvent {
  const factory EventsEvent.started() = EventsStarted;
  const factory EventsEvent.reload() = EventsReload;
  const factory EventsEvent.loadEvent({required String eventId}) = EventsConcreteEventLoad;
}
