part of 'balance_bloc.dart';

@freezed
abstract class BalanceState with _$BalanceState {
  const factory BalanceState({
    required int balance,
  }) = _BalanceState;

  const factory BalanceState.error({
    required int balance,
    required String errorMessage,
  }) = _BalanceErrorState;
}
