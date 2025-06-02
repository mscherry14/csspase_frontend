import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/simple_response.dart';
import '../model/event_model.dart';
import '../repositories/events_repository.dart';

part 'single_event_event.dart';
part 'single_event_state.dart';
part 'single_event_bloc.freezed.dart';

class SingleEventBloc extends Bloc<SingleEventEvent, SingleEventState> {
  final EventsRepository _repository;

  SingleEventBloc(this._repository) : super(const SingleEventState.loading()) {
    on<SingleEventEvent>(
      (event, emit) async => switch (event) {
        _InitSingleEventEvent() => await _init(event, emit),
        _ReloadSingleEventEvent() => await _reload(event, emit),
      },
    );
  }

  _reload(_ReloadSingleEventEvent event, Emitter<SingleEventState> emit) async {
    if  (event.eventId != null) await _getById(event.eventId!, emit, preserveState: true);
  }

  _init(_InitSingleEventEvent event, Emitter<SingleEventState> emit) async {
    await _getById(event.eventId, emit);
  }

  _getById(String eventId, Emitter<SingleEventState> emit, {bool preserveState = false}) async {
    final state = this.state;
    emit(SingleEventState.loading(openedEvent: preserveState? state.openedEvent : null));
    final result = await _repository.getEventById(eventId);
    switch (result) {
      case SimpleOkResponse(:final payload):
        if (payload != null) {
          emit(SingleEventState(openedEvent: payload));
        } else {
          emit(
            SingleEventState.error(
              openedEvent: payload ?? state.openedEvent,
              errorMessage: "unknown error",
            ),
          );
        }
      case SimpleErrorResponse(:final message, :final payload):
        emit(
          SingleEventState.error(
            openedEvent: payload ?? state.openedEvent,
            errorMessage: message,
          ),
        );
    }
  }
}
