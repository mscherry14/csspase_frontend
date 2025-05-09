import 'package:freezed_annotation/freezed_annotation.dart';

import 'person_model.dart';

part 'participant_model.freezed.dart';

@freezed
class ParticipantModel with _$ParticipantModel {
  @override
  final PersonModel person;
  @override
  final int accrual;

  const ParticipantModel({required this.person, required this.accrual});
  //TODO: implement participant
}
