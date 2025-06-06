import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../common/utils/simple_response.dart';
import '../repositories/accrual_repository.dart';
import '../model/participant_model.dart';
import '../../../common/utils/domain/idempotency_key_generator.dart';

part 'accrual_event.dart';
part 'accrual_state.dart';
part 'accrual_bloc.freezed.dart';

class AccrualBloc extends Bloc<AccrualEvent, AccrualState> {
  final IdempotencyKeyGenerator _keyGen;
  final AccrualRepository _repository;
  late final String _idKey;

  AccrualBloc(this._keyGen, this._repository) : super(const AccrualState.initial()) {
    _idKey = _keyGen.generate();
    on<AccrualEvent>(
      (event, emit) => switch (event) {
        SendAccrualEvent() => _sendTokens(event, emit),
        InitEvent() => _init(event, emit),
      },
    );
  }

  _sendTokens(SendAccrualEvent event, Emitter<AccrualState> emit) async {
    final state = this.state;
    if (state is WaitForSendingState) {
      final response = await _repository.send(
        eventId: state.eventId,
        personId: state.recipient.id,
        sum: event.sum,
        idempotencyKey: _idKey,
      );
      switch (response) {
        case SimpleOkResponse():
          emit(AccrualState.success(
            receiverName: state.recipient.name,
            accrual: event.sum,
          ));
        case SimpleErrorResponse(:final message, :final payload):
          emit(AccrualState.error(message: message));
      }
    }
  }

  _init(InitEvent event, Emitter<AccrualState> emit) async {
    final response = await _repository.getRecipientById(eventId: event.eventId, personId: event.recipientId,);
    switch (response) {
      case SimpleOkResponse(:final payload):
        if (payload != null) {
          final recipient = payload;
          final secondResponse = await _repository.getEventTokensCapacity(
            eventId: event.eventId,
          );
          switch (secondResponse) {
            case SimpleOkResponse(:final payload):
              emit(
                payload != null
                    ? AccrualState.waitForSending(
                      eventId: event.eventId,
                      recipient: recipient,
                      tokensCapacity: payload,
                    )
                    : AccrualState.initialError(),
              );
            case SimpleErrorResponse(:final message, :final payload):
              emit(AccrualState.initialError(message: message));
          }
        } else {
          emit(AccrualState.initialError());
        }
      case SimpleErrorResponse(:final message, :final payload):
        emit(AccrualState.initialError(message: message));
    }
  }
}
