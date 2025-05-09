part of 'order_bloc.dart';

@freezed
abstract class OrderState with _$OrderState {
  const factory OrderState({
    required List<Order> orders,
  }) = _OrderState;

  const factory OrderState.error({
    required List<Order> orders,
    required String errorMessage,
  }) = _OrderErrorState;
}
