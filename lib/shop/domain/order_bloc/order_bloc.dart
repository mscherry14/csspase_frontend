import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/simple_response.dart';
import '../model/order.dart';
import '../order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository _repository;

  OrderBloc(this._repository) : super(const OrderState(orders: [])) {
    on<OrderEvent>(
      (event, emit) async => switch (event) {
        OrderReload() => await _reloadOrder(event, emit),
        OrderStarted() => await _started(event, emit),
      },
    );
  }

  Future<void> _reloadOrder(OrderReload event, Emitter emit) async {
    final state = this.state;
    final result = await _repository.getOrders();
    switch (result) {
      case SimpleOkResponse(:final payload):
        emit(OrderState(orders: payload ?? state.orders));
      case SimpleErrorResponse(:final message, :final payload):
        emit(
          OrderState.error(
            orders: payload ?? state.orders,
            errorMessage: message,
          ),
        );
    }
  }

  _started(OrderEvent event, Emitter<OrderState> emit) async {
    await _reloadOrder(OrderReload(), emit);
  }
}
