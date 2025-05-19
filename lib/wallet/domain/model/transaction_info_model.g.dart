// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionInfoModel _$TransactionInfoModelFromJson(
  Map<String, dynamic> json,
) => _TransactionInfoModel(
  transactionHeadline: json['headline'] as String,
  transactionTime: const DateTimeConverter().fromJson(
    json['created_at'] as String,
  ),
  variation: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$TransactionInfoModelToJson(
  _TransactionInfoModel instance,
) => <String, dynamic>{
  'headline': instance.transactionHeadline,
  'created_at': const DateTimeConverter().toJson(instance.transactionTime),
  'amount': instance.variation,
};
