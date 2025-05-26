import 'package:csspace_app/events/domain/model/lector_model.dart';
import 'package:csspace_app/events/domain/model/participant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_info_model.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
abstract class EventModel with _$EventModel {
  @JsonSerializable(explicitToJson: true)
  const factory EventModel({
    required String id,
    required String headline,
    @Default("") String shortDescription,
    required List<LectorModel> teachersList,
    required List<ParticipantModel> participantsList,
    @Default([]) List<EventInfoModel> infoList,
    DateTime? deadline,
    required int actualBalance,
    required int allBalance,
  }) = _EventModel;

  factory EventModel.fromJson(
    Map<String, dynamic> json,
    List<dynamic> participantsJson,
  ) {
    final List<LectorModel> lectors = [];
    for (final lector in json['speakers']) {
      lectors.add(LectorModel.fromJson(lector));
    }

    final List<ParticipantModel> participants = [];
    for (final person in participantsJson) {
      participants.add(ParticipantModel.fromJson(person));
    }

    return EventModel(
      id: json['eventId'] as String,
      headline: json['title'] as String,
      shortDescription: json['shortDescription'] as String,
      teachersList: lectors,
      participantsList: participants,
      infoList: _parseInfoList(json),
      deadline: null, //TODO: real deadline parsing
      actualBalance: json['balance'] as int,
      allBalance: json['init_balance'] as int,
    );
  }

  static List<EventInfoModel> _parseInfoList(Map<String, dynamic> json) {
    final List<EventInfoModel> infoList = [];
    if (json["tags"] is List) {
      for (final elem in json["tags"]) {
        infoList.add(EventInfoModel(text: "$elem", isDate: false));
      }
    }
    if (json["dateTags"] is List) {
      for (final elem in json["dateTags"]) {
        infoList.add(EventInfoModel(text: "$elem", isDate: true));
      }
    }
    return infoList;
  }
}
