part of 'order_bloc.dart';

@freezed
sealed class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = OrderStarted;
  const factory OrderEvent.reload() = OrderReload;
}
