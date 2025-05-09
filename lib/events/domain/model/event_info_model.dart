import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_info_model.freezed.dart';

@freezed
class EventInfoModel with _$EventInfoModel {
  @override
  final String text;
  @override
  final bool isDate;

  const EventInfoModel({required this.text, required this.isDate,});
//TODO: implement EventInfo
}