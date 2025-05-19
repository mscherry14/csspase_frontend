// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParticipantModel _$ParticipantModelFromJson(Map<String, dynamic> json) =>
    _ParticipantModel(
      id: json['id'] as String,
      name: json['name'] as String,
      sent: (json['sent'] as num).toInt(),
    );

Map<String, dynamic> _$ParticipantModelToJson(_ParticipantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sent': instance.sent,
    };
