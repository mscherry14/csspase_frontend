import 'dart:math';

import 'package:csspace_app/common/utils/simple_response.dart';
import 'package:csspace_app/events/domain/model/participant_model.dart';

import 'package:csspace_app/events/domain/model/person_model.dart';

import '../domain/accrual_repository.dart';

class SimpleAccrualRepositoryImpl implements AccrualRepository {
  @override
  Future<SimpleResponse<int>> getEventTokensCapacity(String eventId) async {
    return SimpleOkResponse(payload: 406);
  }

  @override
  Future<SimpleResponse<ParticipantModel>> getRecipientById(
    String personId,
  ) async {
    return SimpleOkResponse(
      payload: ParticipantModel(
        person: PersonModel(id: 'id', name: 'Акакий Акакиевич'),
        accrual: 150,
      ),
    );
  }

  @override
  Future<SimpleResponse<Null>> send({
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
