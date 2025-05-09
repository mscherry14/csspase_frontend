part of 'accrual_bloc.dart';

@freezed
sealed class AccrualEvent with _$AccrualEvent {
  const factory AccrualEvent.init({required String eventId, required String recipientId,}) = InitEvent;
  const factory AccrualEvent.send({required int sum}) = SendAccrualEvent;
}
