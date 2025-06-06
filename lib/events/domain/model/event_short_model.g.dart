// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_short_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventShortModel _$EventShortModelFromJson(Map<String, dynamic> json) =>
    _EventShortModel(
      id: json['eventId'] as String,
      headline: json['title'] as String,
      infoList:
          (EventShortModel._readInfoList(json, 'infoList') as List<dynamic>?)
              ?.map((e) => EventInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      deadline: const DateTimeNullConverter().fromJson(
        json['bankAccountDeadline'] as String?,
      ),
      actualBalance: (json['balance'] as num).toInt(),
      allBalance: (json['init_balance'] as num).toInt(),
    );

Map<String, dynamic> _$EventShortModelToJson(_EventShortModel instance) =>
    <String, dynamic>{
      'eventId': instance.id,
      'title': instance.headline,
      'infoList': instance.infoList.map((e) => e.toJson()).toList(),
      'bankAccountDeadline': const DateTimeNullConverter().toJson(
        instance.deadline,
      ),
      'balance': instance.actualBalance,
      'init_balance': instance.allBalance,
    };
