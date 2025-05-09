import 'package:bloc/bloc.dart';
import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/product.dart';
import '../purchase_repository.dart';

part 'purchase_event.dart';
part 'purchase_state.dart';
part 'purchase_bloc.freezed.dart';

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  final PurchaseRepository _repository;

  PurchaseBloc(this._repository) : super(const PurchaseState.initial()) {
    on<PurchaseEvent>((event, emit) => switch (event) {
          ConfirmPurchaseEvent() => _purchase(event, emit),
          InitEvent() => _init(event, emit),
          PurchaseEvent() => null,
        });
  }

  _purchase(ConfirmPurchaseEvent event, Emitter<PurchaseState> emit) {
    final state = this.state;
    if (state is WaitForConfirmationState) {
      _repository.buyProduct(state.product.productId).then((response) {
        switch (response) {
          case SimpleOkResponse():
            emit(PurchaseState.success());
          case SimpleErrorResponse(:final message, :final payload):
            emit(PurchaseState.error(message: message));
        }
      });
    }
  }

  _init(InitEvent event, Emitter<PurchaseState> emit) async {
    _repository.getProductById(event.productId).then((response) {
      switch (response) {
        case SimpleOkResponse(:final payload):
          emit(payload != null
              ? PurchaseState.waitForConfirmation(product: payload)
              : PurchaseState.productError());
        case SimpleErrorResponse(:final message, :final payload):
          emit(PurchaseState.productError(message: message));
      }
    });
  }
}
