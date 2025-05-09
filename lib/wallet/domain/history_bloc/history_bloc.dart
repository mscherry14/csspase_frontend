import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/wallet/domain/model/transaction_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../history_repository.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';


class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final HistoryRepository _repository;

  HistoryBloc(this._repository)
      : super(
    const HistoryState(
      history: [],
    ),
  ) {
    on<HistoryEvent>((event, emit) => switch (event) {
      HistoryReload() => _reloadHistory(event, emit),
    });
  }

  void _reloadHistory(HistoryReload event, Emitter emit) {
    final state = this.state;
    _repository.getHistory().then((result) {
      switch (result) {
        case SimpleOkResponse(:final payload):
          emit(HistoryState(history: payload ?? state.history));
        case SimpleErrorResponse(:final message, :final payload):
          emit(
            HistoryState.error(
              history: payload ?? state.history,
              errorMessage: message,
            ),
          );
      }
    });
  }
}
