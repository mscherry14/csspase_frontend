part of 'purchase_bloc.dart';

@freezed
sealed class PurchaseEvent with _$PurchaseEvent {
  const factory PurchaseEvent.init({required String productId}) = InitEvent;
  const factory PurchaseEvent.confirm() = ConfirmPurchaseEvent;
}
