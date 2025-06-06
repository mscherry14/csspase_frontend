import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/simple_response.dart';
import '../repositories/events_repository.dart';
import '../model/event_model.dart';
import '../model/event_short_model.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventsRepository _repository;

  EventsBloc(this._repository) : super(const EventsState(events: [])) {
    on<EventsEvent>(
      (event, emit) async => switch (event) {
        EventsReload() => await _reloadEvents(event, emit),
        EventsStarted() => await _started(event, emit),
      },
    );
  }

  Future<void> _reloadEvents(EventsReload event, Emitter emit) async {
    final state = this.state;
    final result = await _repository.getEvents();
    switch (result) {
      case SimpleOkResponse(:final payload):
        emit(EventsState(events: payload ?? state.events,));
      case SimpleErrorResponse(:final message, :final payload):
        emit(EventsState.error(events: state.events, errorMessage: message));
    }
  }

  _started(EventsEvent event, Emitter<EventsState> emit) async {
    await _reloadEvents(EventsReload(), emit);
  }
}
