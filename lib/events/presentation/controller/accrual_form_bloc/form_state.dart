part of 'form_bloc.dart';

@freezed
sealed class AccrualValidationFormState with _$AccrualValidationFormState {
  @override
  abstract final int sumToSend;
  @override
  abstract final int capacity;

  const factory AccrualValidationFormState.valid({
    required int sumToSend,
    required int capacity,
  }) = AccrualValidFormState;

  const factory AccrualValidationFormState.notValid({
    required int sumToSend,
    required int capacity,
    required String errorMessage,
  }) = AccrualNotValidFormState;
}