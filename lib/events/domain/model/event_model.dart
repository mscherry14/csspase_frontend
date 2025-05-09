import 'package:csspace_app/events/domain/model/participant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_info_model.dart';
import 'person_model.dart';

part 'event_model.freezed.dart';

@freezed
class EventModel with _$EventModel {
  const EventModel({
    required this.id,
    required this.headline,
    required this.infoList,
    required this.deadline,
    required this.teachersList,
    required this.participantsList,
    required this.actualBalance,
    required this.allBalance,
  });

  @override
  final String id;
  @override
  final String headline;
  @override
  final List<EventInfoModel> infoList;
  @override
  final DateTime deadline;
  @override
  final List<PersonModel> teachersList;
  @override
  final List<ParticipantModel> participantsList;
  @override
  final int actualBalance;
  @override
  final int allBalance;
}
