part of 'balance_bloc.dart';

@freezed
sealed class BalanceEvent with _$BalanceEvent {
  const factory BalanceEvent.reload() = BalanceReload;
}
