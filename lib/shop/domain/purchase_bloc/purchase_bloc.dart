import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/domain/idempotency_key_generator.dart';
import '../model/product.dart';
import '../repositories/purchase_repository.dart';

part 'purchase_event.dart';
part 'purchase_state.dart';
part 'purchase_bloc.freezed.dart';

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  final IdempotencyKeyGenerator _keyGen;
  final PurchaseRepository _repository;
  late final _idKey;

  PurchaseBloc(this._repository, this._keyGen) : super(const PurchaseState.initial()) {
    _idKey = _keyGen.generate();
    on<PurchaseEvent>((event, emit) async => switch (event) {
          ConfirmPurchaseEvent() => await _purchase(event, emit),
          InitEvent() => await _init(event, emit),
        });
  }

  _purchase(ConfirmPurchaseEvent event, Emitter<PurchaseState> emit) async {
    final state = this.state;
    if (state is WaitForConfirmationState) {
      final response = await _repository.buyProduct(state.product.productId, idempotencyKey: _idKey);
        switch (response) {
          case SimpleOkResponse():
            emit(PurchaseState.success());
          case SimpleErrorResponse(:final message, :final payload):
            emit(PurchaseState.error(message: message));
        }
    }
  }

  _init(InitEvent event, Emitter<PurchaseState> emit) async {
    final response = await _repository.getProductById(event.productId);
      switch (response) {
        case SimpleOkResponse(:final payload):
          emit(payload != null
              ? PurchaseState.waitForConfirmation(product: payload)
              : PurchaseState.productError());
        case SimpleErrorResponse(:final message, :final payload):
          emit(PurchaseState.productError(message: message));
      }
  }
}
