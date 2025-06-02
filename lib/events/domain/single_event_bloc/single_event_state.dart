part of 'single_event_bloc.dart';

@freezed
abstract class SingleEventState with _$SingleEventState {
  const factory SingleEventState({
    required EventModel openedEvent,
  }) = SingleEventOkState;

  const factory SingleEventState.loading({
    EventModel? openedEvent,
  }) = SingleEventLoadingState;

  const factory SingleEventState.error({
    EventModel? openedEvent,
    required String errorMessage,
  }) = SingleEventErrorState;
}