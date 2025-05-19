import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_model.freezed.dart';
part 'participant_model.g.dart';

@freezed
abstract class ParticipantModel with _$ParticipantModel {
  const factory ParticipantModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    // @JsonKey(name: "photo")
    // @PhotoConverter()
    // ImageProvider? photo,
    @JsonKey(name: "sent") required int sent,
  }) = _ParticipantModel;

  factory ParticipantModel.fromJson(Map<String, dynamic> json) => _$ParticipantModelFromJson(json);
}
