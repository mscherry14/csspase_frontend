import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_info_model.freezed.dart';
part 'event_info_model.g.dart';

@freezed
abstract class EventInfoModel with _$EventInfoModel {
  @JsonSerializable()
  const factory EventInfoModel({required String text, required bool isDate,}) = _EventInfoModel;

  factory EventInfoModel.fromJson(Map<String, dynamic> json) => _$EventInfoModelFromJson(json);
}