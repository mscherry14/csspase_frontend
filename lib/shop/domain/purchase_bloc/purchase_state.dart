part of 'purchase_bloc.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState.initial() = InitialState;
  const factory PurchaseState.productError({String? message}) = ProductErrorState;
  const factory PurchaseState.waitForConfirmation({required Product product}) = WaitForConfirmationState;
  const factory PurchaseState.success() = PurchaseSuccessState;
  const factory PurchaseState.error({String? message}) = PurchaseErrorState;
}
