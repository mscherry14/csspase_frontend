import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../balance_repository.dart';

part 'balance_event.dart';
part 'balance_state.dart';
part 'balance_bloc.freezed.dart';

class BalanceBloc extends Bloc<BalanceEvent, BalanceState> {
  final BalanceRepository _repository;

  BalanceBloc(this._repository)
      : super(
          const BalanceState(
            balance: 0,
          ),
        ) {
    on<BalanceEvent>((event, emit) => switch (event) {
          BalanceReload() => _reloadBalance(event, emit),
          BalanceEvent() => throw UnimplementedError(), //todo: fix that shit
        });
  }

  void _reloadBalance(BalanceReload event, Emitter emit) {
    final state = this.state;
    _repository.getBalance().then((result) {
      switch (result) {
        case SimpleOkResponse(:final payload):
          emit(BalanceState(balance: payload ?? state.balance));
        case SimpleErrorResponse(:final message, :final payload):
          emit(
            BalanceState.error(
              balance: payload ?? state.balance,
              errorMessage: message,
            ),
          );
      }
    });
  }
}
