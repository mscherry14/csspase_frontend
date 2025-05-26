import 'dart:math';

import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/events/domain/model/participant_model.dart';

import '../domain/repositories/accrual_repository.dart';
import '../domain/model/accrual_model.dart';

class SimpleAccrualRepositoryImpl implements AccrualRepository {
  @override
  Future<SimpleResponse<int>> getEventTokensCapacity({
    required String eventId,
  }) async {
    return SimpleOkResponse(payload: 406);
  }

  @override
  Future<SimpleResponse<ParticipantModel>> getRecipientById({
    required String personId,
    required String eventId,
  }) async {
    return SimpleOkResponse(
      payload: ParticipantModel(sent: 150, id: 'id', name: 'Акакий Акакиевич'),
    );
  }

  @override
  Future<SimpleResponse<AccrualModel>> send({
    required String eventId,
    required String personId,
    required int sum,
  }) async {
    if (Random().nextBool()) {
      return SimpleOkResponse(payload: null);
    } else {
      return SimpleErrorResponse(message: 'случайно ошибка', payload: null);
    }
  }
}
