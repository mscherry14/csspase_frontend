// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventModel _$EventModelFromJson(Map<String, dynamic> json) => _EventModel(
  id: json['id'] as String,
  headline: json['headline'] as String,
  shortDescription: json['shortDescription'] as String? ?? "",
  teachersList:
      (json['teachersList'] as List<dynamic>)
          .map((e) => LectorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  participantsList:
      (json['participantsList'] as List<dynamic>)
          .map((e) => ParticipantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  infoList:
      (json['infoList'] as List<dynamic>?)
          ?.map((e) => EventInfoModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  deadline:
      json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
  actualBalance: (json['actualBalance'] as num).toInt(),
  allBalance: (json['allBalance'] as num).toInt(),
);

Map<String, dynamic> _$EventModelToJson(
  _EventModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'headline': instance.headline,
  'shortDescription': instance.shortDescription,
  'teachersList': instance.teachersList.map((e) => e.toJson()).toList(),
  'participantsList': instance.participantsList.map((e) => e.toJson()).toList(),
  'infoList': instance.infoList.map((e) => e.toJson()).toList(),
  'deadline': instance.deadline?.toIso8601String(),
  'actualBalance': instance.actualBalance,
  'allBalance': instance.allBalance,
};
