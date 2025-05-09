part of 'order_bloc.dart';

@freezed
abstract class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = OrderStarted;
  const factory OrderEvent.reload() = OrderReload;
}
