class TransactionInfoModel {
  //TODO: freezed
  final String transactionHeadline;
  final DateTime transactionTime;
  final int variation;

  TransactionInfoModel({
    required this.transactionHeadline,
    required this.transactionTime,
    required this.variation,
  });
}
