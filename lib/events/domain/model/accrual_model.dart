import 'package:freezed_annotation/freezed_annotation.dart';

part 'accrual_model.freezed.dart';
part 'accrual_model.g.dart';

@freezed
abstract class AccrualModel with _$AccrualModel {
  @JsonSerializable()
  const factory AccrualModel({
    @JsonKey(name: "receiverName") required String receiverName,
    @JsonKey(name: "amount") required int accrual,
  }) = _AccrualModel;

  factory AccrualModel.fromJson(Map<String, dynamic> json) =>
      _$AccrualModelFromJson(json);
}
