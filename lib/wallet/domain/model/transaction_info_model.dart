import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_info_model.freezed.dart';

@freezed
class TransactionInfoModel with _$TransactionInfoModel {
  @override
  final String transactionHeadline;
  @override
  final DateTime transactionTime;
  @override
  final int variation;

  const TransactionInfoModel({
    required this.transactionHeadline,
    required this.transactionTime,
    required this.variation,
  });
}
