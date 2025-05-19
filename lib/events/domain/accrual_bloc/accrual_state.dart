part of 'accrual_bloc.dart';

@freezed
class AccrualState with _$AccrualState {
  const factory AccrualState.initial() = InitialAccrualState;
  const factory AccrualState.initialError({String? message}) = InitAccrualErrorState;
  const factory AccrualState.waitForSending({required String eventId, required ParticipantModel recipient, required int tokensCapacity}) = WaitForSendingState;
  const factory AccrualState.success({required String receiverName, required int accrual,}) = AccrualSuccessState;
  const factory AccrualState.error({String? message}) = AccrualErrorState;
}
