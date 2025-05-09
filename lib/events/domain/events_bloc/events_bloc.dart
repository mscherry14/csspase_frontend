import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/simple_response.dart';
import '../events_repository.dart';
import '../model/event_model.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventsRepository _repository;

  EventsBloc(this._repository) : super(const EventsState(events: [])) {
    on<EventsEvent>(
      (event, emit) => switch (event) {
        EventsReload() => _reloadEvents(event, emit),
        EventsStarted() => _started(event, emit),
        // GetEventById() => _getEvent(event, emit),
      },
    );
  }

  Future<void> _reloadEvents(EventsReload event, Emitter emit) async {
    final state = this.state;
    final result = await _repository.getEvents();
    switch (result) {
      case SimpleOkResponse(:final payload):
        emit(EventsState(events: payload ?? state.events));
      case SimpleErrorResponse(:final message, :final payload):
        emit(EventsState.error(events: state.events, errorMessage: message));
    }
  }

  _started(EventsEvent event, Emitter<EventsState> emit) {
    _reloadEvents(EventsReload(), emit);
  }

  SimpleResponse<EventModel> getEventById(String eventId) {
    if (state is EventsOkState) {
      ///SEARCH TODO:CHANGE THIS SHITTY CODE TO NORMAL GER FROM REPO
      for (var event in state.events) {
        if (event.id == eventId) {
          return SimpleOkResponse(payload: event);
        }
      }
      return SimpleErrorResponse(message: 'noSuchEvent', payload: null);
    } else {
      return SimpleErrorResponse(message: 'eventListError', payload: null);
    }
  }
}
