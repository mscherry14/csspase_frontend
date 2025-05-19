import 'package:csspace_app/common/utils/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_info_model.freezed.dart';
part 'transaction_info_model.g.dart';

@freezed
abstract class TransactionInfoModel with _$TransactionInfoModel {
  const factory TransactionInfoModel({
    @JsonKey(name: "headline") required String transactionHeadline,
    @JsonKey(name: "created_at") @DateTimeConverter() required DateTime transactionTime,
    @JsonKey(name: "amount") required int variation,
  }) = _TransactionInfoModel;

  factory TransactionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionInfoModelFromJson(json);
}
