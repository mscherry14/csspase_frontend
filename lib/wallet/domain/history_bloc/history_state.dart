part of 'history_bloc.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState({
    required List<TransactionInfoModel> history,
  }) = _HistoryState;

  const factory HistoryState.error({
    required List<TransactionInfoModel> history,
    required String errorMessage,
  }) = _HistoryErrorState;
}
