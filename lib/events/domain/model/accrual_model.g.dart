// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accrual_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccrualModel _$AccrualModelFromJson(Map<String, dynamic> json) =>
    _AccrualModel(
      receiverName: json['receiverName'] as String,
      accrual: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$AccrualModelToJson(_AccrualModel instance) =>
    <String, dynamic>{
      'receiverName': instance.receiverName,
      'amount': instance.accrual,
    };
