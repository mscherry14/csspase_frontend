import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_info_model.dart';

part 'event_short_model.freezed.dart';
part 'event_short_model.g.dart';

@freezed
abstract class EventShortModel with _$EventShortModel {
  @JsonSerializable(explicitToJson: true)
  const factory EventShortModel({
    @JsonKey(name: "eventId") required String id,
    @JsonKey(name: "title") required String headline,
    @JsonKey(
      readValue: EventShortModel._readInfoList, // Функция для чтения и объединения полей
    ) @Default([]) List<EventInfoModel> infoList,
    @JsonKey(name: "registrationDeadline", fromJson: EventShortModel._fromJson, toJson: EventShortModel._toJson) DateTime? deadline,
    @JsonKey(name: "balance") required int actualBalance,
    @JsonKey(name: "init_balance") required int allBalance,
  }) = _EventShortModel;

  factory EventShortModel.fromJson(Map<String, dynamic> json) => _$EventShortModelFromJson(json);

  static DateTime? _fromJson(Object? timestamp) =>
      null; //todo: real deadline parsing

  static String _toJson(DateTime? time) => ""; //todo: real deadline parsing

  static List<Map<String, dynamic>> _readInfoList(Map<dynamic, dynamic> json, _) {
    final items = <Map<String, dynamic>>[];

    if (json['tags'] is List) {
      items.addAll((json['tags'] as List).map((e) => {'text': '$e', 'isDate': false}));
    }

    if (json['dateTags'] is List) {
      items.addAll((json['dateTags'] as List).map((e) => {'text': '$e', 'isDate': true}));
    }

    return items;
    // final List<EventInfoModel> infoList = [];
    // for (final elem in json["tags"]) {
    //   infoList.add(EventInfoModel(text: "$elem", isDate: false));
    // }
    // for (final elem in json["dateTags"]) {
    //   infoList.add(EventInfoModel(text: "$elem", isDate: true));
    // }
    // return infoList;
  }
}
