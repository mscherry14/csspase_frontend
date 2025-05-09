part of 'history_bloc.dart';

@freezed
sealed class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.reload() = HistoryReload;
}
