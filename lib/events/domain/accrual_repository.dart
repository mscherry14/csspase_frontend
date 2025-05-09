import 'package:csspace_app/events/domain/model/participant_model.dart';

import '../../common/utils/simple_response.dart';


abstract interface class AccrualRepository {
  Future<SimpleResponse<ParticipantModel>> getRecipientById(String personId);
  Future<SimpleResponse<int>> getEventTokensCapacity(String eventId);
  Future<SimpleResponse<Null>> send({required String personId, required int sum});
}
