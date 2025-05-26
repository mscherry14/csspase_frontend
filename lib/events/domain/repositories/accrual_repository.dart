import 'package:csspace_app/events/domain/model/participant_model.dart';

import '../../../common/utils/simple_response.dart';
import '../model/accrual_model.dart';


abstract interface class AccrualRepository {
  Future<SimpleResponse<ParticipantModel>> getRecipientById({required String eventId, required String personId});
  Future<SimpleResponse<int>> getEventTokensCapacity({required String eventId});
  Future<SimpleResponse<AccrualModel>> send({required String eventId, required String personId, required int sum});
}
